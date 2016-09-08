//
//  ColorsTableViewController.h
//  passDataBackSample
//
//  Created by Enterpi mini mac on 9/8/16.
//  Copyright © 2016 Enterpi mini mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ColorsDelegate <NSObject>

@optional

- (void)sendColor:(NSString *)colorName;

@end

@interface ColorsTableViewController : UIViewController

@property (nonatomic, assign) id<ColorsDelegate> delegate;

@end
