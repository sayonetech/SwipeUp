//
//  SwipeCardView.m
//  SwipeUp
//
//  Created by SayOne Technologies on 24/02/17.
//  Copyright © 2017 SayOne. All rights reserved.
//

#import "SwipeCardView.h"

@implementation SwipeCardView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)layoutSubviews
{
    [super layoutSubviews];
    self.containerView.frame = CGRectMake(self.containerX, self.containerY, self.containerWidth, self.containerHeight);
    self.containerView.translatesAutoresizingMaskIntoConstraints = YES;
}

@end
