//
//  WLMineCenterView.m
//  SCJHOrderMealsApp
//
//  Created by scjh on 14/11/11.
//  Copyright (c) 2014年 wangliang. All rights reserved.
//

#import "WLMineCenterView.h"
//models
#import "WLMineModel.h"

#define MINE_CELL_HIGH (50)

static WLMineCenterView* mineCenterView = nil;

@interface WLMineCenterView ()
{
    MineCenterCallBack aBlock;
}
@property (nonatomic,strong) UIScrollView *mineScrollview;
@property (nonatomic,strong) NSMutableArray *buttonArray;

@end

@implementation WLMineCenterView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        _mineScrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        _mineScrollview.backgroundColor = [UIColor blueColor];
        [self addSubview:_mineScrollview];
        [self setMineCenter];
    }
    return self;
}

#pragma mark - 设置属性方法

- (NSMutableArray *)buttonArray
{
    if (!_buttonArray)
    {
        _buttonArray = [[NSMutableArray alloc] init];
    }
    return _buttonArray;
}


#pragma mark - 设置个人中心显示

- (void)setMineCenter
{
    if (/* DISABLES CODE */ (1))
    {
        [[WLMineModel sharaMineModel] setLogin];
    }else
    {
        [[WLMineModel sharaMineModel] setUnlogin];
    }
    NSArray *titleArray = [WLMineModel sharaMineModel].mineArray;
    for (int i = 0; i < titleArray.count; i ++ )
    {
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, (MINE_CELL_HIGH + 10) * (i + 1), _mineScrollview.frame.size.width, MINE_CELL_HIGH)];
        [button setTitle:titleArray[i] forState:UIControlStateNormal];
        [_mineScrollview addSubview:button];

        button.backgroundColor = [UIColor orangeColor];
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.buttonArray addObject:button];
    }
}

#pragma mark - 按键方法 

- (void)buttonAction:(UIButton *)sender
{
    NSInteger index = [_buttonArray indexOfObject:sender];
    if (index >= 5)
    {
        index = 0;
    }
    aBlock(index);
}

#pragma mark - 设置点击之后的回调函数

- (void)selectMineView:(MineCenterCallBack)block
{
    aBlock = block;
    NSLog(@"%@",aBlock);
    
}

@end
