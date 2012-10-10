//
//  DXTableCell.m
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 TheSooth. All rights reserved.
//

#import "DXTableCell.h"

@implementation DXTableCell

- (DXTableCell *)initWithReuseIdentifier:(NSString *)identifier {
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    
    return self;
}

- (void)layoutSubviews {
    self.textLabel.backgroundColor = [UIColor clearColor];
    self.detailTextLabel.backgroundColor = [UIColor clearColor];
}

@end
