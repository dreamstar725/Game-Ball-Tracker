//
//  AppDelegate.h
//  Game Ball Tracker
//
//  Created by forstar on 3/21/17.
//  Copyright © 2017 forstar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic) int team1index;
@property (nonatomic) int team2index;
@property (nonatomic) NSString* player_name;
@property (nonatomic) NSString* player_number;
@property (nonatomic) NSString* player_height;
@property (nonatomic) NSString* player_age;
@property (nonatomic) NSString* player_weight;
@property (nonatomic) NSString* player_jump;
@property (nonatomic) NSString* photo_url;
@end
