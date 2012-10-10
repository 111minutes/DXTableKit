//
//  DXRootElement.h
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 TheSooth. All rights reserved.
//

#import "DXElement.h"
#import "DXSection.h"

@class DXSection;

@interface DXRootElement : DXElement {
    NSString *_title;
    NSMutableArray *_sections;
    BOOL _grouped;
}

@property (nonatomic, strong) NSMutableArray *sections;
@property (nonatomic) BOOL grouped;
@property (nonatomic, strong) NSString *title;

- (DXRootElement *)initWithTitle:(NSString *)title;
- (NSInteger)numberOfSections;
- (void)addSection:(DXSection *)section;
- (DXSection *)getSectionForIndex:(NSInteger)index;

@end
