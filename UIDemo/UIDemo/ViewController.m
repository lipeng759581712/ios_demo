//
//  ViewController.m
//  UIDemo
//
//  Created by 李棚 on 2019/5/24.
//  Copyright © 2019年 李棚. All rights reserved.
//

#import "ViewController.h"
#import "TestUIButtonController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"UIButton" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(10, 100, 300, 600)];
    [button addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)btnClick
{
    TestUIButtonController *buttonController = [TestUIButtonController alloc];
    [self.navigationController pushViewController:buttonController animated:YES];
}

@end
