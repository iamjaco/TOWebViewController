//
//  TOAppDelegate.m
//  TOWebViewControllerExample
//
//  Created by Tim Oliver on 6/05/13.
//  Copyright (c) 2013 Tim Oliver. All rights reserved.
//

#import "TOAppDelegate.h"
#import "TOViewController.h"

@implementation TOAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //Create the main window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //set up our view controller depending on screen size
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self.viewController = [[TOViewController alloc] initWithNibName:@"TOViewController_iPhone" bundle:nil];
    }
    else {
        self.viewController = [[TOViewController alloc] initWithNibName:@"TOViewController_iPad" bundle:nil];
    }

    //Push to a navigation controller
    self.navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    
    //present on screen
    self.window.rootViewController = self.navController;
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
