//
//  Section.m
//  DXTableKit
//
//  Created by dev2 on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import "Section.h"

@implementation Section

- (id)initWithTitle:(NSString *)title {
    self = [super init];
    
    _title = title;
    
    return self;
}

- (void)addElement:(Element *)element {
    if (_elements == nil)
        _elements = [[NSMutableArray alloc] init];
    
    [_elements addObject:element];
    
}

- (NSUInteger)indexOfElement:(Element *)element {
    if (_elements) {
        return [_elements indexOfObject:element];
    }
    return NSNotFound;
}

/*- (void)setHeaderImage;
- (void)setFooterImage;*/

@end
