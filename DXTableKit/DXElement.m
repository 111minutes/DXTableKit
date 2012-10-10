//
//  DXElement.m
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 TheSooth. All rights reserved.
//

#import "DXElement.h"
#import "DXTableView.h"

@implementation DXElement

- (UITableViewCell *)getCellForTableView:(DXTableView *)tableView controller:(DXController *)controller {
    DXTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DXElementCell"];
    if (cell == nil){
        cell = [[DXTableCell alloc] initWithReuseIdentifier:@"DXElementCell"];
    }
    
    cell.textLabel.text = nil;
    cell.detailTextLabel.text = nil;
    cell.imageView.image = nil;
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.showsReorderControl = YES;
    cell.accessoryView = nil;
    return cell;
}

- (void)selected:(DXTableView *)tableView controller:(DXController *)controller indexPath:(NSIndexPath *)indexPath {
    [[tableView cellForRowAtIndexPath:indexPath] becomeFirstResponder];
}

@end
