//
//  TBTabBarOverlayView.h
//  Tabby
//
//  Created by Hagit Shemer on 7/3/13.
//  Copyright (c) 2013 Hagit Shemer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TBTabBarOverlayView : UIView

@property (nonatomic, weak) IBOutlet UIButton *leftButton;
@property (nonatomic, weak) IBOutlet UIButton *rightButton;


- (IBAction)buttonTapped:(id)sender;

@end

