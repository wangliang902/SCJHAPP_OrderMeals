//
//  WLHomeHotView.h
//  SCJHOrderMealsApp
//
//  Created by scjh on 14/11/13.
//  Copyright (c) 2014年 wangliang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^HomeHotBlock)();

@interface WLHomeHotView : UIView
{
    HomeHotBlock _block;
}
- (void)selectHotView:(HomeHotBlock)block;

@end
