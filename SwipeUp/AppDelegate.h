//
//  AppDelegate.h
//  SwipeUp
//
//  Created by SayOne Technologies on 24/02/17.
//  Copyright © 2017 SayOne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

