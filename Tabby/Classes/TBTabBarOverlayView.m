//
//  TBTabBarOverlayView.m
//  Tabby
//
//  Created by Hagit Shemer on 7/3/13.
//  Copyright (c) 2013 Hagit Shemer. All rights reserved.
//

#import "TBTabBarOverlayView.h"

@implementation TBTabBarOverlayView


- (IBAction)buttonTapped:(id)sender {
    switch ([sender tag]) {
        case 0:
            NSLog(@"LEFTTTY");
            break;
        case 1:
            NSLog(@"RIGHTYYY");
            break;
        default:
            break;
    }
}

@end
