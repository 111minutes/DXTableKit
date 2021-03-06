//
//  Delegate.h
//  DXTabkeKit
//
//  Created by dev2 on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DXTableView.h"

@interface DXDelegate : NSObject <UITableViewDelegate> {
    @private
        __unsafe_unretained DXTableView *_tableView;
}
- (id<UITableViewDelegate, UIScrollViewDelegate>)initForTableView:(DXTableView *)tableView;
@end
