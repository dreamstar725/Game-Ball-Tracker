//
//  AppController.m


#import "AppController.h"

static AppController *_appController;

@implementation AppController

+ (AppController *)sharedInstance {
    static dispatch_once_t predicate;
    if (_appController == nil) {
        dispatch_once(&predicate, ^{
            _appController = [[AppController alloc] init];
        });
    }
    return _appController;
}

- (id)init {
    self = [super init];
    if (self) {
        
        // Utility Data
        _appMainColor = RGBA(216, 152, 42, 1.0f);
        _appTextColor = RGBA(21, 33, 43, 1.0f);
        _appThirdColor = RGBA(16, 25, 32, 1.0f);
        

        
        
        _introSliderImages = (NSMutableArray *) @[
                                                  @"bg_onboarding1",
                                                  @"bg_onboarding2",
                                                  @"bg_onboarding3"
                                                  ];
        
        _menuPages = [[NSMutableArray alloc] init];
        _menuPages = [@[
                        [@{@"tag" : @"1", @"title" : @"Home", @"icon" : @"home"} mutableCopy],
                        [@{@"tag" : @"2", @"title" : @"Profile", @"icon" : @"profile"} mutableCopy],
                        [@{@"tag" : @"3", @"title" : @"Friends", @"icon" : @"friends"} mutableCopy],
                        [@{@"tag" : @"4", @"title" : @"Statistics", @"icon" : @"statistics"} mutableCopy],
                        [@{@"tag" : @"5", @"title" : @"All Users", @"icon" : @"socialize"} mutableCopy],
                        [@{@"tag" : @"6", @"title" : @"My Rewards", @"icon" : @"myreward"} mutableCopy]
                        ] mutableCopy];
        
        _ownermenuPages = [[NSMutableArray alloc] init];
        _ownermenuPages = [@[
                        [@{@"tag" : @"1", @"title" : @"Home", @"icon" : @"home"} mutableCopy],
                        [@{@"tag" : @"2", @"title" : @"Profile", @"icon" : @"profile"} mutableCopy],
                        [@{@"tag" : @"3", @"title" : @"Friends", @"icon" : @"friends"} mutableCopy],
                        [@{@"tag" : @"4", @"title" : @"Statistics", @"icon" : @"statistics"} mutableCopy],
                        [@{@"tag" : @"5", @"title" : @"All Users", @"icon" : @"socialize"} mutableCopy],
                        [@{@"tag" : @"6", @"title" : @"My Rewards", @"icon" : @"myreward"} mutableCopy],
                        [@{@"tag" : @"7", @"title" : @"Posting Rewards", @"icon" : @"rewardpost"} mutableCopy]
                        ] mutableCopy];
        
        
               
        // Nav Temporary Data
        _editProfileImage = nil;
        _currentMenuTag = @"1";
        _isMyProfileChanged = NO;
        _isPushedFromForgotPasswordSet = NO;
        _isForgotPasswordSet = NO;
        _isPushedFromRegister = NO;
        _isPushedFromLogin = NO;
        _selectedUser = [[NSMutableDictionary alloc] init];
        _datas = [[NSMutableArray alloc] init];
        _allRewardArray = [[NSMutableArray alloc] init];
        _entertainment = [[NSMutableArray alloc] init];
        _online = [[NSMutableArray alloc] init];
        _food = [[NSMutableArray alloc] init];
        _apparel = [[NSMutableArray alloc] init];        
        _allUsers = [[NSMutableArray alloc] init];
        _userFriends = [[NSMutableArray alloc] init];
        _currentUser = [[NSMutableDictionary alloc] init];

        
    }
    return self;
}

@end
