//
//  RootElement.m
//  DXTableKit
//
//  Created by dev2 on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import "RootElement.h"

@implementation RootElement

- (id)initWithTitle:(NSString *)title {
    self = [super init];
    
    _title = title;
    
    return self;
}

- (void)addSection:(Section *)section {
    if (_sections == nil)
        _sections = [[NSMutableArray alloc] init];
    
    section.rootElement = self;
    
    [_sections addObject:section];
}

- (Section *)getSectionForIndex:(NSInteger)index {
    return [_sections objectAtIndex:index];
}

- (NSInteger)numberOfSections {
    return [_sections count];
}

- (UITableViewCell *)getCellForTableView:(DXTableView *)tableView {
    UITableViewCell *cell = [super getCellForTableView:tableView];
    if (_title != nil)
        cell.textLabel.text = _title;
    
    return cell;
    
}

@end
