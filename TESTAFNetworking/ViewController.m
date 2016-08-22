//
//  ViewController.m
//  TESTAFNetworking
//
//  Created by xojiang on 16/7/30.
//  Copyright © 2016年 TEST. All rights reserved.
//

#import "ViewController.h"
#import "TESTJSONModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // TEST dispatch_sync and dispatch_async
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"FAQ");
    });
    
    TESTJSONModel * model = [[TESTJSONModel alloc] initWithString:@"{\"FAQ\":\"TEST JSON\"}" error:nil];
    NSDictionary * dic = [model toDictionary];
    NSString * testStr = [model toJSONString];
    NSData * testData = [model toJSONData];
    NSString * testKeyStr = [model toJSONStringWithKeys:@[@"TEMP"]];
    NSData * testKeyData = [model toJSONDataWithKeys:@[@"TEMP"]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
