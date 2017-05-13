//
//  ViewController.m
//  UILabel
//
//  Created by seayu on 2017/5/12.
//  Copyright © 2017年 seayu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]init];
    label.text = @"iOS开发,从入门到放弃!!";
    label.adjustsFontSizeToFitWidth = YES;
    label.numberOfLines = 0;
    label.font = [UIFont systemFontOfSize:100];
    label.minimumScaleFactor = 0.01;
    label.layer.masksToBounds = YES;
    label.frame = CGRectMake(0, 0, 120, 120);
    label.center = CGPointMake(120, 120);
    [_bgView addSubview:label];
    _label = label;
}
- (IBAction)big:(id)sender {
    CGFloat scale = 1.1;
    _bgView.transform = CGAffineTransformScale(_bgView.transform, scale, scale);
    CGFloat buMoHuScale =  _bgView.transform.a * scale *[UIScreen mainScreen].scale;
    _bgView.layer.contentsScale = buMoHuScale;
    [_label setContentScaleFactor:buMoHuScale];
}

- (IBAction)small:(id)sender {
    CGFloat scale = 0.9;
    _bgView.transform = CGAffineTransformScale(_bgView.transform, scale, scale);
    CGFloat buMoHuScale =  _bgView.transform.a * scale *[UIScreen mainScreen].scale;
    _bgView.layer.contentsScale = buMoHuScale;
    [_label setContentScaleFactor:buMoHuScale];
}

- (IBAction)t:(id)sender {
    NSString *text = [NSString stringWithFormat:@"%@%@",_label.text,_label.text];
    _label.text = text;
}


@end
