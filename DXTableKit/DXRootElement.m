//
//  DXRootElement.m
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 TheSooth. All rights reserved.
//

#import "DXRootElement.h"
#import "DXTableView.h"

@implementation DXRootElement

- (DXRootElement *)initWithTitle:(NSString *)title {
    self = [super init];
    
    _title = title;
    
    return self;
    
}

- (void)addSection:(DXSection *)section {
    if (_sections == nil)
        _sections = [[NSMutableArray alloc] init];
}

- (DXSection *)getSectionForIndex:(NSInteger)index {
    return [_sections objectAtIndex:index];
}

- (NSInteger)numberOfSections {
    return [_sections count];
}

- (UITableViewCell *)getCellForTableView:(DXTableView *)tableView controller:(DXController *)controller {
    UITableViewCell *cell = [super getCellForTableView:tableView controller:controller];
    if (_title!= nil)
        cell.textLabel.text = _title;

    return cell;
}

@end
