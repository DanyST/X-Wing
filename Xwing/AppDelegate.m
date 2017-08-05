//
//  AppDelegate.m
//  Xwing
//
//  Created by Luis Herrera on 08-07-17.
//  Copyright © 2017 Luis Eduardo Herrera Lillo. All rights reserved.
//

#import "AppDelegate.h"
#import "LHLXwingViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

-(void)customizeAppearance{
    [[UINavigationBar appearance] setBarTintColor:[UIColor blackColor]];
    
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:
                                                               [UIColor colorWithRed:212.0f/255.0f
                                                                               green:175.0f/255.0f
                                                                                blue:55.0f/255.0f
                                                                               alpha:1.0f],
                                                           NSFontAttributeName: [UIFont fontWithName:@"Star Jedi"
                                                                                                size:17]}];
    UINavigationBar.appearance.barStyle = UIStatusBarStyleLightContent;
    
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:212.0f/255.0f
                                                               green:175.0f/255.0f
                                                                blue:55.0f/255.0f
                                                               alpha:1.0f]];

}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // personalizamos colores de interfaz con el proxy de appearance
    [self customizeAppearance];
    
    // navigation controller
    UINavigationController *xswingNav = [[UINavigationController alloc] initWithRootViewController:[LHLXwingViewController new]];
    
    // add root View Controller
    self.window.rootViewController = xswingNav;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
