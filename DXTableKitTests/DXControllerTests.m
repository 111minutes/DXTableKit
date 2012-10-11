#import "Kiwi.h"
#import "DXController.h"

SPEC_BEGIN(DXControllerTests)

describe(@"DXController Tests", ^{
    
    __block DXController *controller;
    
    beforeAll(^{
        controller = [[DXController alloc] init];
    });
    
    it(@"DXController must be kind of class UIViewController", ^{
        [[controller should] beKindOfClass:[UIViewController class]];
    });
    
    it(@"Set root element for DXController", ^{
        DXRootElement *root = [[DXRootElement alloc] initWithTitle:@"Root Element"];
        [controller setRoot:root];
        
        [[controller.root should] beIdenticalTo:root];
    });
    
    it(@"Set DXTableView for DXController", ^{
        DXTableView *tableView = [[DXTableView alloc] initWithController:controller];
        
        [controller setTableView:tableView];
        
        [[controller.tableView should] beIdenticalTo:tableView];
    });
    
});

SPEC_END