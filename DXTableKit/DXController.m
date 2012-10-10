//
//  DXController.m
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 TheSooth. All rights reserved.
//

#import "DXController.h"

@implementation DXController

- (DXController *)initWithRootElement:(DXRootElement *)rootElement {
    self = [super init];
    if (self) {
        _root = rootElement;
    }
    return  self;
}

+ (UINavigationController *)controllerWithNavigationForRootElement:(DXRootElement *)root {
    return [[UINavigationController alloc] initWithRootViewController:[[self alloc] initWithRootElement:root]];
}

- (void)setRoot:(DXRootElement *)root {
    _root = root;
    _tableView.root = root;
    
    self.title = root.title;
    
    self.navigationItem.title = root.title;
    
}

- (void)displayController:(UIViewController *)controller {
    if (self.navigationController != nil)
        [self.navigationController pushViewController:controller animated:YES];
}

- (void)loadView {
    [super loadView];
	self.tableView = [[DXTableView alloc] initWithController:self];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    if (_root != nil)
        self.title = _root.title;
}

- (void)setTableView:(DXTableView *)tableView {
    _tableView = tableView;
    
    self.view = _tableView;
}

- (void)displayViewControllerForRoot:(DXRootElement *)root {
    DXController *controller = [[DXController alloc] initWithRootElement: root];
    [self displayController:controller];
}

@end
