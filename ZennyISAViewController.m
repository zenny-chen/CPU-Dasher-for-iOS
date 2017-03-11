//
//  ZennyISAViewController.m
//  CPU Dasher
//
//  Created by Zenny Chen on 12-5-20.
//  Copyright (c) 2012年 GreenGames Studio. All rights reserved.
//

#import "ZennyISAViewController.h"
#import "ZennyInstViewController.h"
#import "LavenderDeviceInfo.h"
#import "ZennyUITag.h"

@interface ZennyISAViewController ()

@end


#define ZENNY_ISA_CELL_HEIGHT                       40.0f

static NSString* const integerISAs[] = {
    @"ADC",
    @"ADD",
    @"ADD (immediate, Thumb)",
    @"ADD (register, Thumb)",
    @"AND",
    @"ASR",
    @"BFC",
    @"BFI",
    @"BIC",
    @"CBNZ, CBZ",
    @"CLZ",
    @"CMN",
    @"CMP",
    @"EOR",
    @"LSL",
    @"LSR",
    @"MLA",
    @"MLS",
    @"MOV",
    @"MOVT",
    @"MUL",
    @"MVN",
    @"ORN",
    @"ORR",
    @"PKH",
    @"QADD",
    @"QADD16",
    @"QADD8",
    @"QASX",
    @"QDADD",
    @"QDSUB",
    @"QSAX",
    @"QSUB",
    @"QSUB16",
    @"QSUB8",
    @"RBIT",
    @"REV",
    @"REV16",
    @"REVSH",
    @"ROR",
    @"RRX",
    @"RSB",
    @"RSC",
    @"SADD16",
    @"SADD8",
    @"SASX",
    @"SBC",
    @"SBFX",
    @"SEL",
    @"SHADD16",
    @"SHADD8",
    @"SHASX",
    @"SHSAX",
    @"SHSUB16",
    @"SHSUB8",
    @"SMLABB, SMLABT, SMLATB, SMLATT",
    @"SMLAD",
    @"SMLAL",
    @"SMLALBB, SMLALBT, SMLALTB, SMLALTT",
    @"SMLALD",
    @"SMLAWB, SMLAWT",
    @"SMLSD",
    @"SMLSLD",
    @"SMMLA",
    @"SMMLS",
    @"SMMUL",
    @"SMUAD",
    @"SMUL",
    @"SMULL",
    @"SMULWB, SMULWT",
    @"SMUSD",
    @"SSAT",
    @"SSAT16",
    @"SSAX",
    @"SSUB16",
    @"SSUB8",
    @"SUB",
    @"SUB (immediate, Thumb)",
    @"SXTAB",
    @"SXTAB16",
    @"SXTAH",
    @"SXTB",
    @"SXTB16",
    @"SXTH",
    @"TEQ",
    @"TST",
    @"UADD16",
    @"UADD8",
    @"UASX",
    @"UBFX",
    @"UHADD16",
    @"UHADD8",
    @"UMAAL",
    @"UMLAL",
    @"UMULL",
    @"UQADD16",
    @"UQADD8",
    @"UQASX",
    @"UQSAX",
    @"UQSUB16",
    @"UQSUB8",
    @"USAD8",
    @"USADA8",
    @"USAT",
    @"USAT16",
    @"USAX",
    @"USUB16",
    @"USUB8",
    @"UXTAB",
    @"UXTAB16",
    @"UXTAH",
    @"UXTB",
    @"UXTB16",
    @"UXTH"
};

static NSString* const neonISAs[] = {
    @"VABA, VABAL",
    @"VABD, VABDL",
    @"VABS",
    @"VACGE, VACGT, VACLE,VACLT",
    @"VADD",
    @"VADDHN",
    @"VADDL, VADDW",
    @"VAND",
    @"VBIC",
    @"VBIF, VBIT, VBSL",
    @"VCEQ",
    @"VCGE",
    @"VCGT",
    @"VCLE",
    @"VCLS",
    @"VCLZ",
    @"VCMP, VCMPE",
    @"VCNT",
    @"VCVT(int4 <-> float4)",
    @"VCVT, VCVTR(int <-> float, int <-> double)",
    @"VCVT(int4 <-> float4, fixed)",
    @"VCVT, VCVTR(int <-> float, int <-> double, fixed)",
    @"VCVT(float <-> double)",
    @"VCVT(half <-> float)",
    @"VCVTB, VCVTT",
    @"VDIV",
    @"VDUP",
    @"VEOR",
    @"VEXT",
    @"VFMA",
    @"VFMS",
    @"VFNMA",
    @"VFNMS",
    @"VHADD",
    @"VHSUB",
    @"VMAX",
    @"VMIN",
    @"VMLA",
    @"VMLAL",
    @"VMLS",
    @"VMLSL",
    @"VMLA(by scalar)",
    @"VMLAL(by scalar)",
    @"VMLS(by scalar)",
    @"VMLSL(by scalar)",
    @"VMOV(immediate)",
    @"VMOV",
    @"VMOV(ARM Core <-> Scalar)",
    @"VMOV(ARM Core <-> Float)",
    @"VMOV(ARM Core <-> Float Dual)",
    @"VMOV(Double <-> ARM Core Dual)",
    @"VMOVL",
    @"VMOVN",
    @"VMUL",
    @"VMULL",
    @"VMUL(by scalar)",
    @"VMULL(by scalar)",
    @"VMVN",
    @"VNEG",
    @"VNMLA",
    @"VNMLS",
    @"VNMUL",
    @"VORN",
    @"VORR",
    @"VPADAL",
    @"VPADD",
    @"VPADDL",
    @"VPMAX",
    @"VPMIN",
    @"VQABS",
    @"VQADD",
    @"VQDMLAL",
    @"VQDMLSL",
    @"VQDMULH",
    @"VQDMULL",
    @"VQMOVN",
    @"VQNEG",
    @"VQRDMULH",
    @"VQRSHL",
    @"VQRSHRN",
    @"VQSHL",
    @"VQSHRN",
    @"VQSUB",
    @"VRADDHN",
    @"VRECPE",
    @"VRECPS",
    @"VREV16",
    @"VREV32",
    @"VREV64",
    @"VRHADD",
    @"VRSHL",
    @"VRSHR",
    @"VRSHRN",
    @"VRSQRTE",
    @"VRSQRTS",
    @"VRSRA",
    @"VRSUBHN",
    @"VSHL",
    @"VSHLL",
    @"VSHR",
    @"VSHRN",
    @"VSLI",
    @"VSQRT",
    @"VSRA",
    @"VSRI",
    @"VSUB",
    @"VSUBHN",
    @"VSUBL",
    @"VSUBW",
    @"VSWP",
    @"VTBL, TBX",
    @"VTRN",
    @"VTST",
    @"VUZP",
    @"VZIP"
};

static NSString* const loadStoreISAs[] = {
    @"LDM",
    @"LDR",
    @"LDRB",
    @"LDRD",
    @"LDRH",
    @"LDRSB",
    @"LDRSH",
    @"STM",
    @"STR",
    @"STRB",
    @"STRD",
    @"STRH",
    @"VLD1",
    @"VLD2",
    @"VLD3",
    @"VLD4",
    @"VLDM",
    @"VLDR",
    @"VST1",
    @"VST2",
    @"VST3",
    @"VST4",
    @"VSTM",
    @"VSTR"
};

static NSString* const miscelleneous[] = {
    @"load-add-store(horizontal)",
    @"load-add-store(vertical)",
    @"load-multiply-store(horizontal)",
    @"load-multiply-store(vertical)"
};

static NSString* const sectionTitles[] = {
    @"Integer instructions",
    @"NEON instructions",
    @"Load/Store instructions",
    @"Miscelleneous"
};

@implementation ZennyISAViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    if(instController != nil)
    {
        [instController release];
        instController= nil;
    }
    
    if(integerSets != nil)
    {
        [integerSets removeAllObjects];
        [integerSets release];
        integerSets = nil;
    }
    if(neonSets != nil)
    {
        [neonSets removeAllObjects];
        [neonSets release];
        neonSets = nil;
    }
    if(loadStoreSets != nil)
    {
        [loadStoreSets removeAllObjects];
        [loadStoreSets release];
        loadStoreSets = nil;
    }
    if(miscelleneousSets != nil)
    {
        [miscelleneousSets removeAllObjects];
        [miscelleneousSets release];
        miscelleneousSets = nil;
    }
    
    [super dealloc];
}



- (void)createCells
{
    CGFloat width = [UIScreen mainScreen].bounds.size.width - 20.0f;
    
    for(NSUInteger i = 0; i < sizeof(integerISAs) / sizeof(integerISAs[0]); i++)
    {
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleBlue;
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 0.0f, width, ZENNY_ISA_CELL_HEIGHT)];
        label.textAlignment = UITextAlignmentLeft;
        label.font = [UIFont fontWithName:@"Helvetica" size:15.0f];
        label.text = integerISAs[i];
        [cell.contentView addSubview:label];
        [label release];
        
        [integerSets addObject:cell];
        [cell release];
    }
    
    for(NSUInteger i = 0; i < sizeof(neonISAs) / sizeof(neonISAs[0]); i++)
    {
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleBlue;
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 0.0f, width, ZENNY_ISA_CELL_HEIGHT)];
        label.textAlignment = UITextAlignmentLeft;
        label.font = [UIFont fontWithName:@"Helvetica" size:15.0f];
        label.text = neonISAs[i];
        [cell.contentView addSubview:label];
        [label release];
        
        [neonSets addObject:cell];
        [cell release];
    }
    
    for(NSUInteger i = 0; i < sizeof(loadStoreISAs) / sizeof(loadStoreISAs[0]); i++)
    {
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleBlue;
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 0.0f, width, ZENNY_ISA_CELL_HEIGHT)];
        label.textAlignment = UITextAlignmentLeft;
        label.font = [UIFont fontWithName:@"Helvetica" size:15.0f];
        label.text = loadStoreISAs[i];
        [cell.contentView addSubview:label];
        [label release];
        
        [loadStoreSets addObject:cell];
        [cell release];
    }
    
    for(NSUInteger i = 0; i < sizeof(miscelleneous) / sizeof(miscelleneous[0]); i++)
    {
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleBlue;
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 0.0f, width, ZENNY_ISA_CELL_HEIGHT)];
        label.textAlignment = UITextAlignmentLeft;
        label.font = [UIFont fontWithName:@"Helvetica" size:15.0f];
        label.text = miscelleneous[i];
        [cell.contentView addSubview:label];
        [label release];
        
        [miscelleneousSets addObject:cell];
        [cell release];
    }
}

- (void)loadView
{
    self.wantsFullScreenLayout = YES;
    
    CGFloat initY = 0.0f;
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    CGFloat totalHeight = screenSize.height - 20.0f;
    
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, initY, screenSize.width, totalHeight)];
    aView.backgroundColor = [UIColor clearColor];
    self.view = aView;
    [aView release];
    
    totalHeight -= 45.0f;
    
    aView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, screenSize.width, totalHeight)];
    aView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:aView];
    [aView release];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, initY, screenSize.width, 35.0f)];
    title.backgroundColor = [UIColor colorWithRed:0.5098f green:0.8627f blue:0.7539f alpha:1.0f];
    title.textAlignment = UITextAlignmentCenter;
    title.textColor = [UIColor colorWithRed:0.7961f green:0.1922f blue:0.4588f alpha:1.0f];
    title.font = [UIFont fontWithName:@"Helvetica-Bold" size:18.0f];
    title.text = @"CPU Dasher";
    [self.view addSubview:title];
    [title release];
    
    initY = 35.0f;
    
    if([UIScreen mainScreen].bounds.size.height > 480.0f)
    {
        UISegmentedControl *segControl = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"integer", @"neon", @"ld/st", @"misc", nil]];
        segControl.frame = CGRectMake(0.0f, 37.0f, screenSize.width, 30.0f);
        [segControl addTarget:self action:@selector(segmentValueChanged:) forControlEvents:UIControlEventValueChanged];
        [self.view addSubview:segControl];
        [segControl release];
        
        initY = 69.0f;
    }
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0.0f, initY, screenSize.width, totalHeight - initY - 20.0f) style:UITableViewStylePlain];
    tableView.tag = INST_ISA_TABLEVIEW_TAG;
    tableView.backgroundColor = [UIColor clearColor];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    [tableView release];
    
    integerSets = [[NSMutableArray alloc] initWithCapacity:sizeof(integerISAs) / sizeof(integerISAs[0])];
    neonSets = [[NSMutableArray alloc] initWithCapacity:sizeof(neonISAs) / sizeof(neonISAs[0])];
    loadStoreSets = [[NSMutableArray alloc] initWithCapacity:sizeof(loadStoreISAs) / sizeof(loadStoreISAs[0])];
    miscelleneousSets = [[NSMutableArray alloc] initWithCapacity:sizeof(miscelleneous) / sizeof(miscelleneous[0])];
    
    [self createCells];
    
    instController = [[ZennyInstViewController alloc] init];
    instController->integerInstNumber = sizeof(integerISAs) / sizeof(integerISAs[0]);
    instController->neonInstNumbers = sizeof(neonISAs) / sizeof(neonISAs[0]);
    instController->loadStoreNumbers = sizeof(loadStoreISAs) / sizeof(loadStoreISAs[0]);
    instController->miscelleneousNumbers = sizeof(miscelleneous) / sizeof(miscelleneous[0]);
}


#pragma mark - UIViewTable data source & delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return ZENNY_ISA_CELL_HEIGHT;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *array;
    
    switch([indexPath section])
    {
        case 0:
        default:
            array = integerSets;
            break;
        
        case 1:
            array = neonSets;
            break;
            
        case 2:
            array = loadStoreSets;
            break;
            
        case 3:
            array = miscelleneousSets;
            break;
    }
    
    return [array objectAtIndex:[indexPath row]];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return sizeof(sectionTitles) / sizeof(sectionTitles[0]);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0)
        return sizeof(integerISAs) / sizeof(integerISAs[0]);
    else if(section == 1)
        return sizeof(neonISAs) / sizeof(neonISAs[0]);
    else if(section == 2)
        return sizeof(loadStoreISAs) / sizeof(loadStoreISAs[0]);
    else
        return sizeof(miscelleneous) / sizeof(miscelleneous[0]);
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return sectionTitles[section];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    instController->sectionIndex = [indexPath section];
    instController->rowIndex = [indexPath row];
    NSString* const *array;
    switch(instController->sectionIndex)
    {
        case 0:
        default:
            array = integerISAs;
            break;
            
        case 1:
            array = neonISAs;
            break;
            
        case 2:
            array = loadStoreISAs;
            break;
            
        case 3:
            array = miscelleneous;
            break;
    }
    
    instController->instName = array[instController->rowIndex];
    
    [self.navigationController pushViewController:instController animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)restoreSegmentControl:(UISegmentedControl*)segControl
{
    segControl.selectedSegmentIndex = UISegmentedControlNoSegment;
}

- (void)segmentValueChanged:(UISegmentedControl*)sender
{
    if(sender.selectedSegmentIndex == UISegmentedControlNoSegment)
        return;
    
    UITableView *tableView = (UITableView*)[self.view viewWithTag:INST_ISA_TABLEVIEW_TAG];
    
    NSIndexPath *indexPath = [[NSIndexPath alloc] initWithIndexes:(NSUInteger[]){sender.selectedSegmentIndex, 0} length:2];
    [tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
    [indexPath release];
    
    [self performSelector:@selector(restoreSegmentControl:) withObject:sender afterDelay:0.5];
}

#pragma mark - Navigation controller delegates

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if(viewController == instController)
        [instController showTitle];
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if(viewController == instController)
        [instController showContents];
}


#pragma mark -

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return interfaceOrientation == UIInterfaceOrientationPortrait || interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown;
}

@end
