//
//  SwipeView.h
//  SwipeUp
//
//  Created by SayOne Technologies on 24/02/17.
//  Copyright © 2017 SayOne. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SwipeViewDataSource, SwipeViewDelegate;

@interface SwipeView : UIView


-(instancetype)initWithFrame:(CGRect)frame;
- (void)reloadData;

@property (nonatomic, weak) id<SwipeViewDataSource> dataSource;
@property (nonatomic, weak) id<SwipeViewDelegate> delegate;
@property (nonatomic) NSInteger numberOfItems;
@property (nonatomic) NSInteger currentItemIndex;


@end

@protocol SwipeViewDataSource <NSObject>

- (NSInteger)numberOfItemsInInshortsView:(SwipeView *)inshortsView;
- (UIView *)inshortsView:(SwipeView *)inshortsView viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view;

@end


@protocol SwipeViewDelegate <NSObject>
@optional
- (void)inshortsViewCurrentItemIndexDidChange:(SwipeView *)inshortsView;
- (void)inshortsView:(SwipeView *)inshortsView didSelectItemAtIndex:(NSInteger)index;

@end
