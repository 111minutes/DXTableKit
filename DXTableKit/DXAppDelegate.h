//
//  DXAppDelegate.h
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 TheSooth. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DXTableCell.h"
#import "DXExampleViewController.h"

@interface DXAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) DXExampleViewController *controller;
@property (strong, nonatomic) DXTableView *tableView;

@end
