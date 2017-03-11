//
//  ZennyGLView.h
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-17.
//
//

#import <UIKit/UIKit.h>

enum ZENNY_SHADER_CALC
{
    ZENNY_SHADER_CALC_COLOR2GRAY,
    ZENNY_SHADER_CALC_CONVOLUTION_KERNEL3X3
};

@interface ZennyGLView : UIView
{
@private
    
    EAGLContext *mContext;
    GLuint mFrameBuffer, mRenderBuffer;
    GLuint mProgram;
    GLuint mTextureName;
    GLfloat mVertexCorrds[16];
    GLfloat mOrthoMatrix[16];
    
    NSTimeInterval mBeginTimes[10], mEndTimes[10];
    NSInteger mCurrentFrameIndex;
    
    CADisplayLink *mDisplayLink;
    enum ZENNY_SHADER_CALC mCalcForm;
    
@public
    
    const void *ipTextureData;
    NSObject *iTargetObject;
    SEL iCompleteSelector;      // - (void)completeSelector;
    
    NSTimeInterval iMinTime, iAverageTime, iMaxTime;
}

- (BOOL)isCapableForGLProcessing;
- (void)determineShaders:(enum ZENNY_SHADER_CALC)calcForm;
- (void)startAnimate;

@end
