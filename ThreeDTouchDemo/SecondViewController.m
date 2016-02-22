//
//  SecondViewController.m
//  ThreeDTouchDemo
//
//  Created by Realank on 16/2/22.
//  Copyright © 2016年 iMooc. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第二个视图";
    // Do any additional setup after loading the view from its nib.
}

- (NSArray<id<UIPreviewActionItem>> *)previewActionItems {
    UIPreviewAction* action1 = [UIPreviewAction actionWithTitle:@"action 1" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"点击了action 1");
    }];
    UIPreviewAction* action2 = [UIPreviewAction actionWithTitle:@"action 2" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"点击了action 2");
    }];
    UIPreviewAction* action3 = [UIPreviewAction actionWithTitle:@"action 3" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"点击了action 3");
    }];
    return @[action1,action2,action3];
}

@end
