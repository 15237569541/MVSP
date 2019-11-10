//
//  ViewController.m
//  MVSP
//
//  Created by 王明 on 2019/8/16.
//  Copyright © 2019 王明. All rights reserved.
//

#import "ViewController.h"
#import "ZFWKWebViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)nextButtonClick:(id)sender {
    ZFWKWebViewController*Vc = [[ZFWKWebViewController alloc]init];
    [self.navigationController pushViewController:Vc animated:YES];
    NSLog(@"122");
    NSLog(@"1299999");
    NSLog(@"122");
    NSLog(@"122");
    NSLog(@"122");
}





@end
