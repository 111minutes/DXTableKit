//
//  Element.h
//  DXTableKit
//
//  Created by dev2 on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import "DXTableViewCell.h"

@class DXTableView;

@interface Element : NSObject
- (UITableViewCell *)getCellForTableView:(DXTableView *)tableView;
@end
