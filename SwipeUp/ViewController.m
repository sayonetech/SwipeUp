//
//  ViewController.m
//  SwipeUp
//
//  Created by SayOne Technologies on 24/02/17.
//  Copyright © 2017 SayOne. All rights reserved.
//

#import "ViewController.h"
#import "SwipeView.h"
#import "SwipeCardView.h"
@interface ViewController () <SwipeViewDelegate,SwipeViewDataSource>

@property (strong, nonnull) SwipeView *swipeView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.swipeView = [[SwipeView alloc] initWithFrame:self.view.frame];
    self.swipeView.dataSource = self;
    self.swipeView.delegate = self;
    
    [self.view addSubview:self.swipeView];
}


- (NSInteger)numberOfItemsInInshortsView:(SwipeView *)inshortsView
{
    return 5;
}

- (UIView *)inshortsView:(SwipeView *)inshortsView viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view
{
    if (index < 0 || index >= 5)
        return nil;
    
    UIView* temp;
    if (view) {
        NSLog(@"reusing view");
        temp = view;
    }
    else {
        temp = [[[NSBundle mainBundle] loadNibNamed:@"NewsCardView" owner:self options:nil] objectAtIndex:0];
        
        SwipeCardView *v = (SwipeCardView*)temp;
        v.containerWidth = inshortsView.frame.size.width - 32;
        v.containerHeight = inshortsView.frame.size.height - 40;
        v.containerX = 16;
        v.containerY = 20;
        temp.frame = CGRectMake(0, 0,inshortsView.frame.size.width, inshortsView.frame.size.height);
    }
    return temp;
}

- (void)inshortsViewCurrentItemIndexDidChange:(SwipeView *)inshortsView
{
    NSLog(@"inshortsViewCurrentItemIndexDidChange");
    NSLog(@"%ld", (long)inshortsView.currentItemIndex);
}


- (void)inshortsView:(SwipeView *)inshortsView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"didSelectItemAtIndex %ld", (long)index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
