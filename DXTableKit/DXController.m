//
//  DXController.m
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import "DXController.h"

@interface DXController ()

@end

@implementation DXController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.tableView = [[DXTableView alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithRootElement:(RootElement *)root {
    self = [super init];
    if (self) {
        self.root = root;
    }
    return self;
}

+ (UINavigationController *)controllerWithNavigationForRootElement:(RootElement *)root {
    return [[UINavigationController alloc] initWithRootViewController:[[self alloc] initWithRootElement:root]];
}

@end
