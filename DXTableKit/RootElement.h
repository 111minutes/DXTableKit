//
//  RootElement.h
//  DXTableKit
//
//  Created by dev2 on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import "Element.h"
#import "Section.h"

@class Section;

@interface RootElement : Element {
    NSString *_title;
    NSMutableArray *_sections;
}

@property (nonatomic, strong) NSMutableArray *sections;

- (id)initWithTitle:(NSString *)title;
- (NSInteger)numberOfSections;
- (Section *)getSectionForIndex:(NSInteger)index;
- (void)addSection:(Section *)section;
@end
