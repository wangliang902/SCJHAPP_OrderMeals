//
//  WLHomeView.m
//  SCJHOrderMealsApp
//
//  Created by scjh on 14/11/12.
//  Copyright (c) 2014年 wangliang. All rights reserved.
//

#import "WLHomeView.h"
#import "WLHomeCollectionViewCell.h"

//views
#import "WLHomeHeadView.h"

#define HOME_HEAD_HIGH (50)

@interface WLHomeView ()

@property(nonatomic,strong) UIScrollView *homeScrollview;

@end

@implementation WLHomeView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        WLHomeHeadView *homeHeadView = [[WLHomeHeadView alloc] initWithFrame:CGRectMake(0, IOS_IPHONE_NAVIGATION_H_HIGH, IOS_IPHONE_WINDOW_WIDE, HOME_HEAD_HIGH)];
        [self addSubview:homeHeadView];
        
        _homeContentView = [[WLHomeContentView alloc] initWithFrame:CGRectMake(0, IOS_IPHONE_NAVIGATION_H_HIGH + HOME_HEAD_HIGH, frame.size.width, frame.size.height - HOME_HEAD_HIGH - IOS_IPHONE_NAVIGATION_H_HIGH)];
        [self addSubview:_homeContentView];
        
        [homeHeadView changeHeadView:^(NSInteger index) {
            if (index == 0)
            {
                [_homeContentView.homeScrollview setContentOffset:CGPointMake(0, 0) animated:YES];
                _homeContentView.isSeller = NO;
            }else if (index == 1)
            {
                _homeContentView.isSeller = YES;
                [_homeContentView.homeScrollview setContentOffset:CGPointMake(_homeContentView.homeScrollview.frame.size.width, 0) animated:YES];
            }
        }];
    
        
    }
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
