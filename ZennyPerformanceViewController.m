//
//  ZennyPerformanceViewController.m
//  CPU Dasher
//
//  Created by zenny_chen on 13-4-12.
//
//

#import "ZennyPerformanceViewController.h"
#import "ZennyCalcViewController.h"
#import "ZennyLinearSearchViewController.h"
#import "ZennySelectionSortViewController.h"
#import "ZennyMemoryCopyViewController.h"
#import "ZennyColor2GrayViewController.h"
#import "ZennyKernelAverageSmootherViewController.h"


@interface ZennyPerformanceViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation ZennyPerformanceViewController

static NSString *sectionTitles[] = {
    @"Common Algorithms",
    @"Image Processing"
};

static SEL callbackMethods[6];

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView
{
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    CGFloat totalHeight = screenBounds.size.height - 20.0f;
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, screenBounds.size.width, totalHeight)];
    aView.backgroundColor = [UIColor whiteColor];
    self.view = aView;
    [aView release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    CGFloat totalHeight = screenBounds.size.height - 20.0f;
    totalHeight -= 45.0f;
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, screenBounds.size.width, 35.0f)];
    title.backgroundColor = [UIColor colorWithRed:0.5098f green:0.8627f blue:0.7539f alpha:1.0f];
    title.textAlignment = UITextAlignmentCenter;
    title.textColor = [UIColor colorWithRed:0.7961f green:0.1922f blue:0.4588f alpha:1.0f];
    title.font = [UIFont fontWithName:@"Helvetica-Bold" size:18.0f];
    title.text = @"CPU Dasher";
    [self.view addSubview:title];
    [title release];
    
    CGSize size = self.view.frame.size;
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0.0f, 35.0f, size.width, totalHeight - 35.0f) style:UITableViewStyleGrouped];
    tableView.backgroundColor = [UIColor clearColor];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    [tableView release];
    
    [self createCells];
    
    callbackMethods[0] = @selector(calcAppears);
    callbackMethods[1] = @selector(linearSearchAppears);
    callbackMethods[2] = @selector(selectionSortAppears);
    callbackMethods[3] = @selector(memoryCopyAppears);
    callbackMethods[4] = @selector(colorToGrayAppears);
    callbackMethods[5] = @selector(kernelAverageSmootherAppears);
}

- (void)dealloc
{
    if(mTableCellList != nil)
    {
        for(size_t i = 0; i < sizeof(sectionTitles) / sizeof(sectionTitles[0]); i++)
        {
            [mTableCellList[i] removeAllObjects];
            [mTableCellList[i] release];
        }
        free(mTableCellList);
    }
    
    [super dealloc];
}

- (void)addCellForSection:(NSUInteger)section titles:(NSArray*)titles
{
    const NSUInteger count = [titles count];
    for(size_t i = 0; i < count; i++)
    {
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleBlue;
        
        UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 0.0f, 300.0f, cell.bounds.size.height)];
        title.backgroundColor = [UIColor clearColor];
        title.textAlignment = UITextAlignmentLeft;
        title.textColor = [UIColor blackColor];
        title.font = [UIFont fontWithName:@"Helvetica-Bold" size:15.0f];
        title.text = titles[i];
        [cell.contentView addSubview:title];
        [title release];
        
        [mTableCellList[section] addObject:cell];
        [cell release];
    }
}

- (void)createCells
{
    mTableCellList = (NSMutableArray**)malloc(sizeof(sectionTitles) / sizeof(sectionTitles[0]) * sizeof(*mTableCellList));
    
    // Create section 0
    mTableCellList[0] = [[NSMutableArray alloc] initWithCapacity:8];
    [self addCellForSection:0 titles:@[@"Matrix Multiplication", @"Linear Search", @"Selection Sort", @"Memory Copy"]];
    
    mTableCellList[1] = [[NSMutableArray alloc] initWithCapacity:8];
    [self addCellForSection:1 titles:@[@"Color to Gray", @"Kernel Average Smoother"]];
}

#pragma mark - UIViewTable data source & delegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [mTableCellList[[indexPath section]] objectAtIndex:[indexPath row]];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return sizeof(sectionTitles) / sizeof(*sectionTitles);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [mTableCellList[section] count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return sectionTitles[section];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger index;
    if([indexPath section] == 0)
        index = [indexPath row];
    else
        index = 4 + [indexPath row];
    
    [self performSelector:callbackMethods[index]];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - All kinds of callback methods for next controller

- (void)calcAppears
{
    ZennyCalcViewController *ctrl = [[ZennyCalcViewController alloc] init];
    [self.navigationController pushViewController:ctrl animated:YES];
    [ctrl release];
}

- (void)linearSearchAppears
{
    ZennyLinearSearchViewController *ctrl = [[ZennyLinearSearchViewController alloc] init];
    [self.navigationController pushViewController:ctrl animated:YES];
    [ctrl release];
}

- (void)selectionSortAppears
{
    ZennySelectionSortViewController *ctrl = [[ZennySelectionSortViewController alloc] init];
    [self.navigationController pushViewController:ctrl animated:YES];
    [ctrl release];
}

- (void)memoryCopyAppears
{
    ZennyMemoryCopyViewController *ctrl = [[ZennyMemoryCopyViewController alloc] init];
    [self.navigationController pushViewController:ctrl animated:YES];
    [ctrl release];
}

- (void)colorToGrayAppears
{
    ZennyColor2GrayViewController *ctrl = [[ZennyColor2GrayViewController alloc] init];
    [self.navigationController pushViewController:ctrl animated:YES];
    [ctrl release];
}

- (void)kernelAverageSmootherAppears
{
    ZennyKernelAverageSmootherViewController *ctrl = [[ZennyKernelAverageSmootherViewController alloc] init];
    [self.navigationController pushViewController:ctrl animated:YES];
    [ctrl release];
}

#pragma mark -

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
