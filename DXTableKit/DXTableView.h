//
//  DXTableView.h
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 TheSooth. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DXTableCell.h"
#import "DXRootElement.h"
#import "DXController.h"
#import "DXDataSource.h"
#import "DXDelegate.h"

@class DXController;

@interface DXTableView : UITableView {
    @private
    __unsafe_unretained DXController *_controller;
    DXRootElement *_root;
    id <UITableViewDataSource> _DXDataSource;
    id <UITableViewDelegate> _DXDelegate;
}

@property (nonatomic, strong) DXRootElement *root;
@property (nonatomic, readonly) DXController *controller;

- (DXTableView *)initWithController:(DXController *)controller;
- (NSIndexPath *)indexForElement:(DXElement *)element;
- (UITableViewCell *)cellForElement:(DXElement *)element;

@end
