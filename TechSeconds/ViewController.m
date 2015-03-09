//
//  ViewController.m
//  TechSeconds
//
//  Created by ReyMasuda on 2015/03/09.
//  Copyright (c) 2015年 ReyMasuda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    count = 0.0; //countは0.0スタート
    countLabel.text = [NSString stringWithFormat:@"%.2f",count]; //floatの変数なので%f!!
    perfectLabel.text = [NSString stringWithFormat:@""];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)start{
    if (![timer isValid]) {
        timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                                 target:self
                                               selector:@selector(up)
                                               userInfo:nil
                                                repeats:YES];
        //既にタイマーが作動していなければ、開始する
    }
}

-(IBAction)stop{
    if ([timer isValid]) { //[timer isValid] == YESを略した書き方
        [timer invalidate]; //タイマーが作動していたら停止する
    }
}

-(void)up{
    count += 0.01; //count = count + 0.01を省略した書き方
    countLabel.text = [NSString stringWithFormat:@"%.2f",count];
}

-(IBAction)clear;{
    if ([timer isValid]) {
        [timer invalidate];
    }
    
    count = 0.0;
    countLabel.text = [NSString stringWithFormat:@"%.2f",count];
}

@end
