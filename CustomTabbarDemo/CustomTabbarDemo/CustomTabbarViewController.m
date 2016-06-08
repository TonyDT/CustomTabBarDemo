//
//  CustomTabbarViewController.m
//  CustomTabbarDemo
//
//  Created by dev on 6/8/16.
//  Copyright © 2016 zfx5130. All rights reserved.
//

#import "CustomTabbarViewController.h"
#import "UIImage+Custom.h"

@interface CustomTabbarViewController ()

@end

@implementation CustomTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUInteger defaultIndex = 0;
    self.selectedIndex = defaultIndex;
    [self.tabBar setBackgroundImage:[UIImage imageWithColor:[UIColor whiteColor]]];
    self.tabBar.translucent = NO;
    UIImage *shadowImage = [UIImage imageWithColor:[UIColor colorWithRed:229 / 255.0f green:234 /255.0f blue:240 / 255.0f alpha:1.0]
                                              size:CGSizeMake(0.75f, 0.75f)];
    [self.tabBar setShadowImage:shadowImage];
    NSArray *tabBarImages = @[[UIImage imageNamed:@"tab_bar_vehicles"],
                              [UIImage imageNamed:@"tab_bar_community"],
                              [UIImage imageNamed:@"tab_bar_home"],
                              [UIImage imageNamed:@"tab_bar_nearby"],
                              [UIImage imageNamed:@"tab_bar_user"]
                              ];
    NSArray *tabBarTitles = @[
                               @"车库",
                               @"动态",
                               @"Go",
                               @"附近",
                               @"个人"
                              ];

    for (NSUInteger i = 0; i < [self.viewControllers count]; i++) {
        UIViewController *viewController = self.viewControllers[i];
        viewController.tabBarItem.image = [tabBarImages[i] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        viewController.tabBarItem.title = tabBarTitles[i];
        viewController.tabBarItem.imageInsets = UIEdgeInsetsMake(-1, 0, 1, 0);
        viewController.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -3);
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
