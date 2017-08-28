//
//  UIViewController+NavigationBar.m
//  SnapECG_Sport
//
//  Created by baotiao ni on 15/1/28.
//  Copyright (c) 2015年 baotiao ni. All rights reserved.
//

#import "UIViewController+NavigationBar.h"

static UIButton *globalLeftNavBtn = nil;
static UIButton *gloabaRightNavBtn = nil;

@implementation UIViewController (CustomNavBar)

/**
 *  <#Description#>
 *
 *  @param title    <#title description#>
 *  @param leftBtn  <#leftBtn description#>
 *  @param rightBtn <#rightBtn description#>
 */
-(void)setNavBar:(UILabel *)title withLeftNavBtn:(UIButton *)leftBtn withRightNavBtn:(UIButton *)rightBtn {
    self.navigationItem.titleView = title;
    
    [globalLeftNavBtn removeFromSuperview];
    globalLeftNavBtn = leftBtn;
    [self.navigationController.navigationBar addSubview:globalLeftNavBtn];
    
    [gloabaRightNavBtn removeFromSuperview];
    gloabaRightNavBtn = rightBtn;

    [self.navigationController.navigationBar addSubview:gloabaRightNavBtn];
}

/**
 *  <#Description#>
 *
 *  @param title <#title description#>
 */
-(void)setNavTitle:(UILabel *)title {
    self.navigationItem.titleView = title;
}

/**
 *  <#Description#>
 *
 *  @param leftBtn <#leftBtn description#>
 */
-(void)setNavBarLeftBtn:(UIButton *)leftBtn {
    [globalLeftNavBtn removeFromSuperview];
    globalLeftNavBtn = leftBtn;
    [self.navigationController.navigationBar addSubview:globalLeftNavBtn];
}

/**
 *  <#Description#>
 *
 *  @param rightBtn <#rightBtn description#>
 */
-(void)setNavBarRightBtn:(UIButton *)rightBtn {
    [gloabaRightNavBtn removeFromSuperview];
    gloabaRightNavBtn = rightBtn;
    [self.navigationController.navigationBar addSubview:gloabaRightNavBtn];
}

@end
