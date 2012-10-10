//
//  DataSource.h
//  DXTableKit
//
//  Created by dev2 on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DXTableView.h"

@interface DXDataSource : NSObject <UITableViewDataSource> {
@private
__unsafe_unretained DXTableView *_tableView;
}

- (id <UITableViewDataSource, NSObject>)initForTableView:(DXTableView *)view;
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath;

@end
