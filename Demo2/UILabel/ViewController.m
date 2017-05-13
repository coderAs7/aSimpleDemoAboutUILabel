//
//  ViewController.m
//  UILabel
//
//  Created by seayu on 2017/5/12.
//  Copyright © 2017年 seayu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _label.layer.masksToBounds = YES;
}



- (IBAction)big:(id)sender {
    static CGFloat scale = 1.1;
    CGFloat buMoHuScale =  _label.transform.a * scale *[UIScreen mainScreen].scale;
    _label.transform = CGAffineTransformScale(_label.transform, scale, scale);
    [_label setContentScaleFactor:buMoHuScale];
}

- (IBAction)small:(id)sender {
    CGFloat scale = 0.9;
    CGFloat buMoHuScale =  _label.transform.a * scale *[UIScreen mainScreen].scale;
    _label.transform = CGAffineTransformScale(_label.transform, scale, scale);
    [_label setContentScaleFactor:buMoHuScale];
}

@end
