//
//  DXLabelElement.m
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 TheSooth. All rights reserved.
//

#import "DXLabelElement.h"
#import "DXTableView.h"

@implementation DXLabelElement

- (DXLabelElement *)initWithTitle:(NSString *)title {
    self = [super init];
    _title = title;
    
    return self;
}

- (UITableViewCell *)getCellForTableView:(DXTableView *)tableView controller:(DXController *)controller {
    DXTableCell *cell = (DXTableCell *) [super getCellForTableView:tableView controller:controller];
    
    cell.accessoryType = UITableViewCellAccessoryNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = _title;
    
    
    return cell;
}

@end
