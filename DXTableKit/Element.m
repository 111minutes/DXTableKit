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
    UITableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:@"ElementCell"];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"ElementCell"];
    }
    
    return cell;
}

@end
