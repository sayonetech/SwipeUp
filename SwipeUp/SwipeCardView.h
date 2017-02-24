//
//  SwipeCardView.h
//  SwipeUp
//
//  Created by SayOne Technologies on 24/02/17.
//  Copyright © 2017 SayOne. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwipeCardView : UIView
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (nonatomic) int containerWidth;
@property (nonatomic) int containerHeight;
@property (nonatomic) int containerX;
@property (nonatomic) int containerY;

@end
