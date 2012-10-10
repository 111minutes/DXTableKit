//
//  DXTableViewCell.m
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import "DXTableViewCell.h"

@implementation DXTableViewCell

- (DXTableViewCell *)initWithReuseIdentifier:(NSString *)identifier {
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews {
    self.textLabel.backgroundColor = [UIColor clearColor];
    self.detailTextLabel.backgroundColor = [UIColor clearColor];
}

@end
