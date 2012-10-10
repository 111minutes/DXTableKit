//
//  DXController.h
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Section.h"

@class DXTableView;

@interface DXController : UIViewController {
    
@private
    RootElement *_root;
    id <UITableViewDataSource> _dataSource;
    id <UITableViewDelegate> _delegate;
    DXTableView *_tableView;
}

@property (nonatomic, strong) RootElement *root;
@property (nonatomic, strong) DXTableView *tableView;

- (id)initWithRootElement:(RootElement *)root;

@end
