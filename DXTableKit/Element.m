//
//  Element.m
//  DXTableKit
//
//  Created by dev2 on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import "Element.h"

@implementation Element

- (UITableViewCell *)getCellForTableView:(UITableView *)tableView {
    DXTableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:@"ElementCell"];
    
    if(cell == nil) {
        cell = [[DXTableViewCell alloc]initWithReuseIdentifier:@"ElementCell"];
    }
    
    return cell;
}

@end
