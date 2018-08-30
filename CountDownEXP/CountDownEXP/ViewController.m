//
//  ViewController.m
//  CountDownEXP
//
//  Created by wenbin lu on 2018/8/29.
//  Copyright © 2018年 wenbin lu. All rights reserved.
//

#import "ViewController.h"
#import "XMTimer.h"
@interface ViewController ()
@property (nonatomic,strong)NSString *oneString;
@property (nonatomic,strong)NSString *twoString;
@property (nonatomic,strong)NSString *threeString;
@property (nonatomic,strong)NSString *fourString;
@property (nonatomic,strong)NSString *fiveString;


@end

@implementation ViewController
- (IBAction)one:(id)sender {
  UIButton *btn =   (UIButton *)sender;
    btn.enabled = NO;
   self.oneString =  [XMTimer excute:^(NSTimeInterval time) {
        [btn setTitle:[NSString stringWithFormat:@"%.fs 后重新获取",time] forState:UIControlStateNormal];
       if (time == 0) {
            [btn setTitle:[NSString stringWithFormat:@"开始"] forState:UIControlStateNormal];
           btn.enabled = YES;
       }
    } delay:60 interval:1 repeats:YES asyn:NO];
}
- (IBAction)stopOne:(id)sender {
    [XMTimer cancelWithTaskName:self.oneString];
}

- (IBAction)two:(id)sender {
    UIButton *btn =   (UIButton *)sender;
    btn.enabled = NO;
    self.twoString =  [XMTimer excute:^(NSTimeInterval time) {
        [sender setTitle:[NSString stringWithFormat:@"%.fs",time] forState:UIControlStateNormal];
        if (time == 0) {
            [btn setTitle:[NSString stringWithFormat:@"开始"] forState:UIControlStateNormal];
            btn.enabled = YES;
        }
    } delay:60 interval:1 repeats:YES asyn:NO];
}
- (IBAction)stoptwo:(id)sender {
    [XMTimer cancelWithTaskName:self.twoString];
}
- (IBAction)three:(id)sender {
    UIButton *btn =   (UIButton *)sender;
    btn.enabled = NO;
    self.threeString =  [XMTimer excute:^(NSTimeInterval time) {
        [sender setTitle:[NSString stringWithFormat:@"%.fs",time] forState:UIControlStateNormal];
        if (time == 0) {
            [btn setTitle:[NSString stringWithFormat:@"开始"] forState:UIControlStateNormal];
            btn.enabled = YES;
        }
    } delay:60 interval:1 repeats:YES asyn:NO];
}
- (IBAction)stopthree:(id)sender {
    [XMTimer cancelWithTaskName:self.threeString];
}
- (IBAction)four:(id)sender {
    UIButton *btn =   (UIButton *)sender;
    btn.enabled = NO;
    self.fourString =  [XMTimer excute:^(NSTimeInterval time) {
        [sender setTitle:[NSString stringWithFormat:@"%.fs",time] forState:UIControlStateNormal];
        if (time == 0) {
            [btn setTitle:[NSString stringWithFormat:@"开始"] forState:UIControlStateNormal];
            btn.enabled = YES;
        }
    } delay:60 interval:1 repeats:YES asyn:NO];
}
- (IBAction)stopfour:(id)sender {
    [XMTimer cancelWithTaskName:self.fourString];
}
- (IBAction)five:(id)sender {
    UIButton *btn =   (UIButton *)sender;
    btn.enabled = NO;
    self.fiveString =  [XMTimer excute:^(NSTimeInterval time) {
        [sender setTitle:[NSString stringWithFormat:@"%.fs",time] forState:UIControlStateNormal];
        if (time == 0) {
            [btn setTitle:[NSString stringWithFormat:@"开始"] forState:UIControlStateNormal];
            btn.enabled = YES;
        }
    } delay:60 interval:1 repeats:YES asyn:NO];
}
- (IBAction)stopfive:(id)sender {
    [XMTimer cancelWithTaskName:self.fiveString];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
