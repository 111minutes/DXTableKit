//
//  LabelElement.m
//  DXTableKit
//
//  Created by dev2 on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import "LabelElement.h"

@implementation LabelElement

- (id)initWithTitile:(NSString *)title {
    self = [super init];

    _title = title;
    
    return self;
}

- (UITableViewCell *)cellForTableView:(UITableView *)tableView {
    UITableViewCell *cell;
    
    cell.textLabel.text = _title;
    
    return cell;
}

@end
