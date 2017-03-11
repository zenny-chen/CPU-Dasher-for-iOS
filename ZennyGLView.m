//
//  ZennyGLView.m
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-17.
//
//

#import "ZennyGLView.h"
#import <QuartzCore/QuartzCore.h>
#import <OpenGLES/ES2/gl.h>


enum
{
    UNIFORM_ORTHO_MATRIX,
	UNIFORM_TEXTURE_SAMPLER,
    UNIFORM_WIDTH_PER_PIXEL,
	NUM_UNIFORMS
};
static GLint uniforms[NUM_UNIFORMS];

// attribute index
enum
{
	ATTRIB_VERTEX,
    ATTRIB_TEXTURE,
	NUM_ATTRIBUTES
};


@implementation ZennyGLView

+ (Class)layerClass
{
    return [CAEAGLLayer class];
}

#pragma mark - Interfaces

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        // Get the layer
        CAEAGLLayer *eaglLayer = (CAEAGLLayer *)self.layer;
        
        eaglLayer.opaque = TRUE;
        eaglLayer.drawableProperties = [NSDictionary dictionaryWithObjectsAndKeys:
                                        [NSNumber numberWithBool:FALSE], kEAGLDrawablePropertyRetainedBacking, kEAGLColorFormatRGBA8, kEAGLDrawablePropertyColorFormat, nil];
        
        mContext = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
        if(mContext == nil)
            return nil;
        
        if(![EAGLContext setCurrentContext:mContext])
            return nil;
        
        mCurrentFrameIndex = 0;
    }
    
    return self;
}

- (void)dealloc
{
    [self destroyShaders:0 fragShader:0];
    [self destroyFramebuffers];
    [EAGLContext setCurrentContext:nil];
    if(mContext != nil)
        [mContext release];
    
    [super dealloc];
}

- (BOOL)isCapableForGLProcessing
{
    GLint maxTextureSize;
    glGetIntegerv(GL_MAX_TEXTURE_SIZE, &maxTextureSize);
    if(maxTextureSize < 2048)
        return NO;
    
    return YES;
}

- (void)determineShaders:(enum ZENNY_SHADER_CALC)calcForm
{
    mCalcForm = calcForm;
    
    [self loadShaders];
}

#pragma mark - Framebuffer & Draws

- (void)createFramebuffers
{
    // Create default framebuffer object. The backing will be allocated for the current layer in -resizeFromLayer
    glGenFramebuffers(1, &mFrameBuffer);
    glGenRenderbuffers(1, &mRenderBuffer);
    glBindFramebuffer(GL_FRAMEBUFFER, mFrameBuffer);
    glBindRenderbuffer(GL_RENDERBUFFER, mRenderBuffer);
    glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_RENDERBUFFER, mRenderBuffer);
    
    CAEAGLLayer *layer = (CAEAGLLayer*)self.layer;
    
    // Allocate color buffer backing based on the current layer size
    glBindRenderbuffer(GL_RENDERBUFFER, mRenderBuffer);
    [mContext renderbufferStorage:GL_RENDERBUFFER fromDrawable:layer];
    GLint backingWidth, backingHeight;
	glGetRenderbufferParameteriv(GL_RENDERBUFFER, GL_RENDERBUFFER_WIDTH, &backingWidth);
    glGetRenderbufferParameteriv(GL_RENDERBUFFER, GL_RENDERBUFFER_HEIGHT, &backingHeight);
    
    NSLog(@"The width is: %d, height is: %d", backingWidth, backingHeight);
	
    if (glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE)
	{
        NSLog(@"Failed to make complete framebuffer object %x", glCheckFramebufferStatus(GL_FRAMEBUFFER));
        return;
    }
    if(![self validateProgram])
        return;
    
    glViewport(0, 0, backingWidth, backingHeight);
    
    // use shader program
	glUseProgram(mProgram);

    
    static const GLfloat vertices[] = {
        -1.0f, 1.0f, 0.0f, 1.0f,
        -1.0f, -1.0f, 0.0f, 1.0f,
        1.0f, 1.0f, 0.0f, 1.0f,
        1.0f, -1.0f, 0.0f, 1.0f
    };
    memcpy(mVertexCorrds, vertices, sizeof(vertices));
    
    GLfloat left = -1.0f, right = 1.0f, bottom = -1.0f, top = 1.0f;
    
    if(backingWidth < backingHeight)
    {
        GLfloat normalizedX = (GLfloat)backingWidth / (GLfloat)backingHeight;
        left = -normalizedX;
        right = normalizedX;
        mVertexCorrds[0] = left;
        mVertexCorrds[4] = left;
        mVertexCorrds[8] = right;
        mVertexCorrds[12] = right;
    }
    else if(backingWidth > backingHeight)
    {
        GLfloat normalizedY = (GLfloat)backingHeight / (GLfloat)backingWidth;
        bottom = -normalizedY;
        top = normalizedY;
        mVertexCorrds[1] = top;
        mVertexCorrds[5] = bottom;
        mVertexCorrds[9] = top;
        mVertexCorrds[13] = bottom;
    }
    
    glVertexAttribPointer(ATTRIB_VERTEX, 4, GL_FLOAT, GL_FALSE, 0, mVertexCorrds);
    glEnableVertexAttribArray(ATTRIB_VERTEX);
    
    // Set ortho matrix. The matrix is in column major order
    
    // column 0
    mOrthoMatrix[0] = 2.0f / (right - left);
    mOrthoMatrix[1] = 0.0f;
    mOrthoMatrix[2] = 0.0f;
    mOrthoMatrix[3] = -(right + left) / (right - left);
    
    // column 1
    mOrthoMatrix[4] = 0.0f;
    mOrthoMatrix[5] = 2.0f / (top - bottom);
    mOrthoMatrix[6] = 0.0f;
    mOrthoMatrix[7] = -(top + bottom) / (top - bottom);
    
    // column 2
    mOrthoMatrix[8] = 0.0f;
    mOrthoMatrix[9] = 0.0f;
    mOrthoMatrix[10] = -1.0f;
    mOrthoMatrix[11] = 0.0f;
    
    // column 3
    mOrthoMatrix[12] = 0.0f;
    mOrthoMatrix[13] = 0.0f;
    mOrthoMatrix[14] = 0.0f;
    mOrthoMatrix[15] = 1.0f;
    
    glUniformMatrix4fv(uniforms[UNIFORM_ORTHO_MATRIX], 1, GL_FALSE, mOrthoMatrix);
    
    // Generate textures
    glActiveTexture(GL_TEXTURE0);
    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
    glGenTextures(1, &mTextureName);
    glBindTexture(GL_TEXTURE_2D, mTextureName);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 2048, 2048, 0, GL_RGBA, GL_UNSIGNED_BYTE, ipTextureData);
    
    static const GLfloat texturePoints[] = {
        0.0f, 1.0f,
        0.0f, 0.0f,
        1.0f, 1.0f,
        1.0f, 0.0f
    };
    
    glVertexAttribPointer(ATTRIB_TEXTURE, 2, GL_FLOAT, GL_FALSE, 0, texturePoints);
    glEnableVertexAttribArray(ATTRIB_TEXTURE);
    
    // The sampler is bound to TEXTURE0
	glUniform1i(uniforms[UNIFORM_TEXTURE_SAMPLER], 0);
    
    if(mCalcForm == ZENNY_SHADER_CALC_CONVOLUTION_KERNEL3X3)
        glUniform1f(uniforms[UNIFORM_WIDTH_PER_PIXEL], 1.0f / 2048.0f);
    
    glEnable(GL_CULL_FACE);
    glCullFace(GL_BACK);
    glFrontFace(GL_CCW);
}

- (void)destroyFramebuffers
{
    if(mTextureName != 0)
    {
        glDeleteTextures(1, &mTextureName);
        mTextureName = 0;
    }
    if(mFrameBuffer != 0)
    {
        glDeleteFramebuffers(1, &mFrameBuffer);
        mFrameBuffer = 0;
    }
    if(mRenderBuffer != 0)
    {
        glDeleteRenderbuffers(1, &mRenderBuffer);
        mRenderBuffer = 0;
    }
}

- (void)startAnimate
{
    mDisplayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(drawView)];
    mDisplayLink.frameInterval = 6;
    [mDisplayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
}

- (void)drawView
{
    glBindFramebuffer(GL_FRAMEBUFFER, mFrameBuffer);
    
    mBeginTimes[mCurrentFrameIndex] = [[NSProcessInfo processInfo] systemUptime];
    
    // Draw
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    glFinish();
    
    mEndTimes[mCurrentFrameIndex] = [[NSProcessInfo processInfo] systemUptime];
    
    if(++mCurrentFrameIndex == 5)
        [self statsComplete];
    
    glBindRenderbuffer(GL_RENDERBUFFER, mRenderBuffer);
    [mContext presentRenderbuffer:GL_RENDERBUFFER];
}

- (void)statsComplete
{
    NSTimeInterval deltaTimes[5];
    deltaTimes[0] = mEndTimes[0] - mBeginTimes[0];
    NSTimeInterval minTime = deltaTimes[0];
    NSTimeInterval maxTime = minTime;
    NSTimeInterval sumTime = minTime;
    
    for(int i = 1; i < 5; i++)
    {
        deltaTimes[i] = mEndTimes[i] - mBeginTimes[i];
        if(minTime > deltaTimes[i])
            minTime = deltaTimes[i];
        if(maxTime < deltaTimes[i])
            maxTime = deltaTimes[i];
        sumTime += deltaTimes[i];
    }
    iMinTime = minTime * 1000.0;
    iMaxTime = maxTime * 1000.0;
    iAverageTime = sumTime * 1000.0 / 5.0;
    
    if(mDisplayLink != nil)
    {
        [mDisplayLink invalidate];
        mDisplayLink = nil;
    }
    
    if(iTargetObject != nil && [iTargetObject respondsToSelector:iCompleteSelector])
        [iTargetObject performSelector:iCompleteSelector];
}

- (void)layoutSubviews
{
	[self destroyFramebuffers];
    [self createFramebuffers];
    [self drawView];
}

#pragma mark - load shaders

- (BOOL)loadShaders
{
	GLuint vertShader, fragShader;
	NSString *vertShaderPathname, *fragShaderPathname;
	
	// create and compile vertex shader
	vertShaderPathname = [[NSBundle mainBundle] pathForResource:@"zennyShader" ofType:@"vsh"];
    vertShader = [self compileShader:vertShaderPathname type:GL_VERTEX_SHADER];
    if(vertShader == 0)
        return NO;
	
	// create and compile fragment shader
	fragShaderPathname = [[NSBundle mainBundle] pathForResource:@"zennyShader" ofType:@"fsh"];
    if(mCalcForm == ZENNY_SHADER_CALC_CONVOLUTION_KERNEL3X3)
        fragShaderPathname = [[NSBundle mainBundle] pathForResource:@"kernelconv" ofType:@"fsh"];
    fragShader = [self compileShader:fragShaderPathname type:GL_FRAGMENT_SHADER];
	if(fragShader == 0)
        return NO;
    
    // create shader program
	mProgram = glCreateProgram();
	
	// attach vertex shader to program
	glAttachShader(mProgram, vertShader);
	
	// attach fragment shader to program
	glAttachShader(mProgram, fragShader);
	
	// bind attribute locations
	// this needs to be done prior to linking
	glBindAttribLocation(mProgram, ATTRIB_VERTEX, "position");
    glBindAttribLocation(mProgram, ATTRIB_TEXTURE, "texturePoints");
	
	// link program
	if (![self linkProgram]) {
		[self destroyShaders:vertShader fragShader:fragShader];
		return NO;
	}
	
	// get uniform locations
	uniforms[UNIFORM_TEXTURE_SAMPLER] = glGetUniformLocation(mProgram, "sampler");
    uniforms[UNIFORM_ORTHO_MATRIX] = glGetUniformLocation(mProgram, "orthoMatrix");
    if(mCalcForm == ZENNY_SHADER_CALC_CONVOLUTION_KERNEL3X3)
        uniforms[UNIFORM_WIDTH_PER_PIXEL] = glGetUniformLocation(mProgram, "widthPerPixel");
	
	// release vertex and fragment shaders
	if (vertShader)
		glDeleteShader(vertShader);
	if (fragShader)
		glDeleteShader(fragShader);
	
	return YES;
}

- (GLuint)compileShader:(NSString*)shaderPath type:(GLenum)shaderType
{
	GLint status;
	const GLchar *sources;
    GLuint shader;
	
	// get source code
	sources = [[NSString stringWithContentsOfFile:shaderPath encoding:NSUTF8StringEncoding error:nil] UTF8String];
	if (!sources)
	{
		NSLog(@"Failed to load vertex shader");
		return 0;
	}
	
    shader = glCreateShader(shaderType);				// create shader
    glShaderSource(shader, 1, &sources, NULL);	// set source code in the shader
    glCompileShader(shader);					// compile shader
	
#if defined(DEBUG)
	GLint logLength;
    glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &logLength);
    if (logLength > 0)
    {
        GLchar *log = (GLchar *)malloc(logLength);
        glGetShaderInfoLog(shader, logLength, &logLength, log);
        NSLog(@"Shader compile log:\n%s", log);
        free(log);
    }
#endif
    
    glGetShaderiv(shader, GL_COMPILE_STATUS, &status);
    if (status == GL_FALSE)
	{
		NSLog(@"Failed to compile shader: %s", sources);
        glDeleteShader(shader);
        return 0;
	}
	
	return shader;
}


/* Link a program with all currently attached shaders */
- (GLint)linkProgram
{
	GLint status;
	
	glLinkProgram(mProgram);
	
#if defined(DEBUG)
	GLint logLength;
    glGetProgramiv(mProgram, GL_INFO_LOG_LENGTH, &logLength);
    if (logLength > 0)
    {
        GLchar *log = (GLchar *)malloc(logLength);
        glGetProgramInfoLog(mProgram, logLength, &logLength, log);
        NSLog(@"Program link log:\n%s", log);
        free(log);
    }
#endif
    
    glGetProgramiv(mProgram, GL_LINK_STATUS, &status);
    if (status == GL_FALSE)
		NSLog(@"Failed to link program %d", mProgram);
	
	return status;
}


/* Validate a program (for i.e. inconsistent samplers) */
- (GLint)validateProgram
{
	GLint logLength, status;
	
	glValidateProgram(mProgram);
    glGetProgramiv(mProgram, GL_INFO_LOG_LENGTH, &logLength);
    if (logLength > 0)
    {
        GLchar *log = (GLchar *)malloc(logLength);
        glGetProgramInfoLog(mProgram, logLength, &logLength, log);
        NSLog(@"Program validate log:\n%s", log);
        free(log);
    }
    
    glGetProgramiv(mProgram, GL_VALIDATE_STATUS, &status);
    if (status == GL_FALSE)
		NSLog(@"Failed to validate program %d", mProgram);
	
	return status;
}

/* delete shader resources */
- (void)destroyShaders:(GLuint)vertShader fragShader:(GLuint)fragShader
{
	if (vertShader)
		glDeleteShader(vertShader);
	if (fragShader)
		glDeleteShader(fragShader);
	if (mProgram)
    {
		glDeleteProgram(mProgram);
		mProgram = 0;
	}
}


#pragma mark -

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
