//
//  TBAppDelegate.h
//  Tabby
//
//  Created by Hagit Shemer on 7/3/13.
//  Copyright (c) 2013 Hagit Shemer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TBAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIWindow *window;
@property (strong, nonatomic) IBOutlet UITabBarController *tabBarController;

@end
