//
//  DXTableView.h
//  DXTableKit
//
//  Created by dev2 on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Element.h"
#import "Section.h"
#import "RootElement.h"

@class Element;
@class Section;

@interface DXTableView : UITableView {
    RootElement *_root;
    id <UITableViewDataSource> _DXdataSource;
    id <UITableViewDelegate> _DXdelegate;
}

@property (nonatomic, strong) RootElement *root;

- (UITableViewCell *)cellForElement:(Element *)element;

@end
