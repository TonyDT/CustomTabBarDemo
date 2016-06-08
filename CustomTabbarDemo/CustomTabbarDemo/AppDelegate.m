//
//  AppDelegate.m
//  CustomTabbarDemo
//
//  Created by dev on 6/8/16.
//  Copyright © 2016 zfx5130. All rights reserved.
//

#import "AppDelegate.h"
#import "UIImage+Custom.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self setupGlobalUI];
    return YES;
}


#pragma mark - Private

- (void)setupGlobalUI {
    
    [[UITabBar appearance] setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithWhite:1.0 alpha:0.9f]]];
    NSDictionary *tabBarItemTextAttributes = @{
                                               NSFontAttributeName            : [UIFont systemFontOfSize:10.0f weight:UIFontWeightSemibold],
                                               NSForegroundColorAttributeName : [UIColor colorWithRed:201 / 255.0f green:211 / 255.0f blue:221 / 255.0f alpha:1.0f]
                                               };
    UIColor *color =
    [UIColor colorWithRed:59 / 255.0f green:183 / 255.0f blue:247 / 255.0f alpha:1.0];
    NSDictionary *selectedTabBarItemTextAttributes = @{
                                                       NSForegroundColorAttributeName : color
                                                       };
    [[UITabBarItem appearance] setTitleTextAttributes:tabBarItemTextAttributes
                                             forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:selectedTabBarItemTextAttributes
                                             forState:UIControlStateSelected];
    [[UITabBar appearance] setTintColor:color];
}


- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
