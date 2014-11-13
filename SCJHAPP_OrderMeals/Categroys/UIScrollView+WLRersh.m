//
//  UIScrollView+WLRersh.m
//  SCJHAPP_OrderMeals
//
//  Created by scjh on 14/11/13.
//  Copyright (c) 2014年 wangliang. All rights reserved.
//

#import "UIScrollView+WLRersh.h"

@implementation UIScrollView (WLRersh)

- (void)addHeadView:(UIView *)headView
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0,-100, 100, 50)];
    label.text = @"加载中";
    [self addSubview:label];
    
    UIActivityIndicatorView *activtyIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    activtyIndicatorView.center = CGPointMake(0, -100);
    [self addSubview:activtyIndicatorView];
    [activtyIndicatorView startAnimating];
}

@end
