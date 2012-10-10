//
//  DXSection.m
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 TheSooth. All rights reserved.
//

#import "DXSection.h"

@implementation DXSection

- (DXSection *)initWithTitle:(NSString *)title {
    self = [super init];
    
    _title = title;
    _elements = [NSMutableArray new];
    
    return self;
}

- (void)addElement:(DXElement *)element {
    if(_elements == nil)
        _elements = [NSMutableArray new];
    
    [_elements addObject:element];
}

- (NSUInteger)indexOfElement:(DXElement *)element {
    if(_elements)
        return [_elements indexOfObject:element];
    
    return NSNotFound;
}

@end
