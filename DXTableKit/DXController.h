//
//  DXController.h
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 TheSooth. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DXTableView.h"

@interface DXController : UIViewController {
    DXRootElement *_root;
    DXTableView *_tableView;
    id <UITableViewDataSource> _DXDataSource;
    id <UITableViewDelegate> _DXDelegate;
}

@property (nonatomic, strong) DXRootElement *root;
@property (nonatomic, strong) DXTableView *tableView;

- (DXController *)initWithRootElement:(DXRootElement *)rootElement;
- (void)displayController:(UIViewController *)controller;
- (void)displayViewControllerForRoot:(DXRootElement *)root;

@end
