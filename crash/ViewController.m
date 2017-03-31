//
//  ViewController.m
//  crash
//
//  Created by tztddong on 2016/11/29.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)click:(id)sender {
    
    NSArray *arr = @[@"1",@"3",@"2"];
    NSLog(@"%@",arr[5]);
}


@end
