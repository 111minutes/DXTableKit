//
//  DXTableView.m
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 TheSooth. All rights reserved.
//

#import "DXTableView.h"

@implementation DXTableView
{
    BOOL _deselectRowWhenViewAppears;
}

- (DXTableView *)initWithController:(DXController *)controller {
        self = [super initWithFrame:CGRectMake(0, 0, 0, 0) style:controller.root.grouped ? UITableViewStyleGrouped : UITableViewStylePlain];
    
    if (self != nil) {
        _controller = controller;
        _root = controller.root;
        
        _DXDataSource = [[DXDataSource alloc] initForTableView:self];
        self.dataSource = _DXDataSource;
        
        _DXDelegate = [[DXDelegate alloc] initForTableView:self];
        self.delegate = _DXDelegate;
        
        self.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        
    }
    return self;
}

- (NSIndexPath *)indexForElement:(DXElement *)element {
    for (int i = 0; i< [_root.sections count]; ++i){
        DXSection *currSection = [_root.sections objectAtIndex:(NSUInteger) i];
        
        for (int j = 0; j< [currSection.elements count]; ++j){
            DXElement *currElement = [currSection.elements objectAtIndex:(NSUInteger) j];
            if (currElement == element){
                return [NSIndexPath indexPathForRow:j inSection:i];
            }
        }
    }
    return NULL;
}

- (UITableViewCell *)cellForElement:(DXElement *)element {
    return [self cellForRowAtIndexPath:[self indexForElement:element]];
}

@end
