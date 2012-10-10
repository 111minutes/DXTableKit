//
//  Section.h
//  DXTableKit
//
//  Created by dev2 on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Element.h"
#import "RootElement.h"

@class Section;

@interface Section : NSObject {
    NSString *_title;
    NSMutableArray *_elements;
}

@property (nonatomic, strong) RootElement *rootElement;
@property (nonatomic, strong) NSMutableArray *elements;

- (void)addElement:(Element *)element;
- (NSUInteger)indexOfElement:(Element *)element;
- (id)initWithTitle:(NSString *)title;

@end
