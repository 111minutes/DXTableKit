//
//  DXSection.h
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 TheSooth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DXRootElement.h"

@class DXRootElement;
//@class DXElement;

@interface DXSection : NSObject {
    NSString *_title;
    NSMutableArray *_elements;
}

@property (nonatomic, strong) NSMutableArray *elements;
@property (nonatomic, strong) DXRootElement *rootElement;

- (DXSection *)initWithTitle:(NSString *)title;
- (void)addElement:(DXElement *)element;
- (NSUInteger)indexOfElement:(DXElement *)element;
@end
