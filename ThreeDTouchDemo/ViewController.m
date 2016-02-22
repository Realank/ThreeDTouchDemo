//
//  ViewController.m
//  ThreeDTouchDemo
//
//  Created by Realank on 16/2/22.
//  Copyright © 2016年 iMooc. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController () <UIViewControllerPreviewingDelegate>
@property (weak, nonatomic) IBOutlet UIView *block;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"第一个视图";
    [self registerForPreviewingWithDelegate:self sourceView:self.block];
}
- (IBAction)createFastAction:(id)sender {
    [self add3DTouchEntry];
    
}
- (IBAction)removeFastAction:(id)sender {
    [[UIApplication sharedApplication] setShortcutItems:nil];
}


//初始化3Dtouch入口
- (void)add3DTouchEntry {
    // Override point for customization after application launch.
    UIApplicationShortcutItem *shortItem1 = [[UIApplicationShortcutItem alloc] initWithType:@"dynamicIconOne" localizedTitle:@"动态快捷启动1"];
    UIApplicationShortcutIcon *icon = [UIApplicationShortcutIcon iconWithTemplateImageName:@"ShortCutIcon"];
    UIApplicationShortcutItem *shortItem2 = [[UIApplicationShortcutItem alloc] initWithType:@"synamicIconTwo" localizedTitle:@"动态快捷启动2" localizedSubtitle:@"由代码创建" icon:icon userInfo:@{@"key1":@"value1"}];
    NSArray *shortItems = [[NSArray alloc] initWithObjects:shortItem1,shortItem2, nil];
    [[UIApplication sharedApplication] setShortcutItems:shortItems];
    //    NSMutableArray* array = [[[UIApplication sharedApplication] shortcutItems] mutableCopy];
    //    [array removeObjectAtIndex:0];
    //    [[UIApplication sharedApplication] setShortcutItems:[array copy]];
    
}

#pragma mark - UIViewControllerPreviewingDelegate

-(UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location {
    //tableView.rectForRowAtIndexPath(indexPath)
    SecondViewController* secondVC = [[SecondViewController alloc]init];
    return secondVC;
}


- (void)previewingContext:(id<UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit {
    [self showViewController:viewControllerToCommit sender:self];
    
}


@end
