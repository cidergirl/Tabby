//
//  TBCustomTabBar.m
//  Tabby
//
//  Created by Hagit Shemer on 7/3/13.
//  Copyright (c) 2013 Hagit Shemer. All rights reserved.
//

#import "TBCustomTabBar.h"
#import "TBTabBarOverlayView.h"

@interface TBCustomTabBar()
@property (weak, nonatomic) TBTabBarOverlayView *overlayView;
@end


@implementation TBCustomTabBar

- (void)awakeFromNib
{
	[super awakeFromNib];
    self.overlayView = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([TBTabBarOverlayView class])
                                   owner:nil
                                 options:nil] lastObject];
    [self addSubview:self.overlayView];
    
    CGRect frame = self.overlayView.frame;
    frame.origin = CGPointZero;
    self.overlayView.frame = frame;
	
    [self bringSubviewToFront:self.overlayView];
    
    [self.overlayView.leftButton addTarget:self action:@selector(overlayButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.overlayView.rightButton addTarget:self action:@selector(overlayButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)overlayButtonTapped:(id)sender {
    [self didSelectTabAtIndex:[sender tag]];
}

- (void) didSelectTabAtIndex:(NSUInteger)index {
    UITabBarController *mainTabBarController = (UITabBarController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    [mainTabBarController setSelectedIndex:index];
}

@end
