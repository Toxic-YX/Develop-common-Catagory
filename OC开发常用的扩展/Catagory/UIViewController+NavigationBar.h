//
//  UIViewController+NavigationBar.h
//  SnapECG_Sport
//
//  Created by baotiao ni on 15/1/28.
//  Copyright (c) 2015年 baotiao ni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIViewController (CustomNavBar)

/**
 *  <#Description#>
 *
 *  @param title    <#title description#>
 *  @param leftBtn  <#leftBtn description#>
 *  @param rightBtn <#rightBtn description#>
 */
-(void)setNavBar:(UILabel *)title withLeftNavBtn:(UIButton *)leftBtn withRightNavBtn:(UIButton *)rightBtn;

/**
 *  <#Description#>
 *
 *  @param title <#title description#>
 */
-(void)setNavTitle:(UILabel *)title;

/**
 *  <#Description#>
 *
 *  @param leftBtn <#leftBtn description#>
 */
-(void)setNavBarLeftBtn:(UIButton *)leftBtn;

/**
 *  <#Description#>
 *
 *  @param rightBtn <#rightBtn description#>
 */
-(void)setNavBarRightBtn:(UIButton *)rightBtn;

@end


