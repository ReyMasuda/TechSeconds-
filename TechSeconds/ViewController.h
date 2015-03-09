//
//  ViewController.h
//  TechSeconds
//
//  Created by ReyMasuda on 2015/03/09.
//  Copyright (c) 2015年 ReyMasuda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UILabel *countLabel; //ラベル宣言
    IBOutlet UILabel *perfectLabel;
    
    float count; //今回は少数！！
    
    NSTimer *timer;
}

-(IBAction)start; //startメソッド
-(IBAction)stop; //stopメソッド
-(IBAction)clear; //clearメソッド

- (void)up; //返り値も引数もないメソッド

@end

