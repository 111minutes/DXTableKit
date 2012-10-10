//
//  DXAppDelegate.m
//  DXTableKit
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 TheSooth. All rights reserved.
//

#import "DXAppDelegate.h"
#import "DXLabelElement.h"

@implementation DXAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    DXRootElement *root = [self create];
    _controller = (DXExampleViewController *)[[DXExampleViewController alloc] initWithRootElement:root];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:_controller];
    
    self.window.rootViewController = nav;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (DXRootElement *)create {
    DXRootElement *root = [[DXRootElement alloc] init];
    root.grouped = YES;
    root.title = @"Testing!";
    
    DXSection *sectionSamples = [[DXSection alloc] initWithTitle:@"Sample Section"];
    [sectionSamples addElement:[self createLabelsRoot]];
    
    [root addSection:sectionSamples];
    
    return root;
    
}

- (DXRootElement *)createLabelsRoot {
    DXRootElement *root = [[DXRootElement alloc] init];
    root.title = @"Labels";
    root.grouped = YES;
    DXSection *s1 = [[DXSection alloc] initWithTitle:@"LabelElement"];
    [s1 addElement:[[DXLabelElement alloc] initWithTitle:@"With no value"]];
    
    [root addSection:s1];
    
    return root;
}
@end
