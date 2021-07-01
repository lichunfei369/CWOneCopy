//
//  TabBarController.m
//  CWOneCopy
//
//  Created by 李春菲 on 2018/1/17.
//  Copyright © 2018年 李春菲. All rights reserved.
//

#import "TabBarController.h"
#import "UIImage+CWColorAndStretch.h"
#define kUITabBarHeight  49.0
@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpTabBarController];
}

- (void)setUpTabBarController {
    
    //设置tabbar背景颜色
    UIImage * backGroundImageColor = [UIImage imageWithColor:[UIColor colorWithWhite:254/255.0 alpha:1.0] size:CGSizeMake(CWScreenW, kUITabBarHeight)];
    //insertSubview：可以任意试图插入  即 A inserSubview B atindex 2  将B插入A子视图第二个位置上而addSubview只能添加到指定视图上
    [self.tabBar insertSubview:[[UIImageView alloc] initWithImage:backGroundImageColor] atIndex:0];
    
    for (UIViewController * vc in self.viewControllers) {
        vc.tabBarItem.imageInsets =UIEdgeInsetsMake(8, 0, -8, 0);
    }
}

@end
