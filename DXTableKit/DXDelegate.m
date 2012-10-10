//
//  Delegate.m
//  DXTabkeKit
//
//  Created by dev2 on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import "DXDelegate.h"

@implementation DXDelegate

- (id<UITableViewDelegate, UIScrollViewDelegate>)initForTableView:(DXTableView *)tableView {
    self = [super init];
    if (self) {
        _tableView = tableView;
    }
    return self;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DXSection *section = [_tableView.root getSectionForIndex:indexPath.section];
    DXElement *element = [section.elements objectAtIndex:(NSUInteger) indexPath.row];
    
    [element selected:_tableView controller:_tableView.controller indexPath:indexPath];
}

@end
