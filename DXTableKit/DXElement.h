//
//  DXElement.h
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 TheSooth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DXTableCell.h"

@class DXTableView;
@class DXController;

@interface DXElement : NSObject

- (UITableViewCell *)getCellForTableView:(DXTableView *)tableView controller:(DXController *)controller;
- (void)selected:(DXTableView *)tableView controller:(DXController *)controller indexPath:(NSIndexPath *)indexPath;
@end
