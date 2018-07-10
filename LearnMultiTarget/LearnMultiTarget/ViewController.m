//
//  ViewController.m
//  LearnMultiTarget
//
//  Created by ROOSTERLIN on 2018/7/10.
//  Copyright © 2018年 ROOSTERLIN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    UILabel *targetDistinguishLable = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    [self.view addSubview:targetDistinguishLable];
    
    //判斷target
#if BETA
    targetDistinguishLable.text = @"Version:BETA";
#endif
    
#if RELEASE
    targetDistinguishLable.text = @"Version:RELEASE";
#endif
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
