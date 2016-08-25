//
//  ViewController.m
//  ZFActionSheetDemo
//
//  Created by 张锋 on 16/4/26.
//  Copyright © 2016年 张锋. All rights reserved.
//

#import "ViewController.h"
#import "ZFActionSheet.h"

@interface ViewController () <ZFActionSheetDelegate>
- (IBAction)style1:(id)sender;
- (IBAction)style2:(id)sender;
- (IBAction)style3:(id)sender;
@end

@implementation ViewController

#pragma mark - ZFActionSheetDelegate
- (void)clickAction:(ZFActionSheet *)actionSheet atIndex:(NSUInteger)index
{
    NSLog(@"选中了 %zd",index);
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)style3:(id)sender {
    ZFActionSheet *actionSheet = [ZFActionSheet actionSheetWithTitle:@"这是提示的标题，显示样式3" confirms:@[@"选项1",@"选项2",@"选项3",@"选项4"] cancel:@"取消" style:ZFActionSheetStyleCancel];
    actionSheet.delegate = self;
    [actionSheet showInView:self.view.window];
}

- (IBAction)style2:(id)sender {
    ZFActionSheet *actionSheet = [ZFActionSheet actionSheetWithTitle:@"这是提示的标题，显示样式2" confirms:@[@"选项1",@"选项2",@"选项3",@"选项4"] cancel:@"取消" style:ZFActionSheetStyleDestructive];
    actionSheet.delegate = self;
    [actionSheet showInView:self.view.window];
}

- (IBAction)style1:(id)sender {
    ZFActionSheet *actionSheet = [ZFActionSheet actionSheetWithTitle:@"这是提示的标题，显示样式1" confirms:@[@"选项1",@"选项2",@"选项3",@"选项4"] cancel:@"取消" style:ZFActionSheetStyleDefault];
    actionSheet.delegate = self;
    [actionSheet showInView:self.view.window];
}
@end
