//
//  DXTableView.m
//  DXTableKit
//
//  Created by dev2 on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import "DXTableView.h"

@implementation DXTableView

- (void)setRoot:(RootElement *)root {
    _root = root;
    
    [self reloadData];
}

- (NSIndexPath *)indexForElement:(Element *)element {
    for(int i = 0; i < [_root.sections count]; ++i) {
        Section *currentSection = [_root.sections objectAtIndex:(NSUInteger) i];
        
        for(int j = 0; j < [currentSection.elements count]; ++j) {
            Element *currentElement = [currentSection.elements objectAtIndex:(NSInteger)j];
            if (currentElement == element) {
                return [NSIndexPath indexPathForRow:j inSection:i];
            }
        }
    }
    return nil;
}

- (UITableViewCell *)cellForElement:(Element *)element {
    return [self cellForRowAtIndexPath:[self indexForElement:element]];
}

@end
