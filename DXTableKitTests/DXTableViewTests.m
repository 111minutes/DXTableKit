#import "Kiwi.h"
#import "DXTableView.h"

SPEC_BEGIN(DXTableViewTests)

describe(@"DXTableView Tests", ^{
    
    __block DXTableView *tableView;
    __block DXController *controller;
    
    beforeAll(^{
        controller = [[DXController alloc] init];
        tableView = [[DXTableView alloc] initWithController:controller];
    });
    
    it(@"Checking initialization DXTableView with Controller", ^{
        [[tableView.controller should] beIdenticalTo:controller];
    });
    
    it(@"DXTableView must be kind of class UITableView", ^{
        [[tableView should] beKindOfClass:[UITableView class]];
    });
    
    it(@"DXTableView DataSource and Delegate must be nonNil", ^{
        [[(id)tableView.dataSource should] beNonNil];
        [[(id)tableView.delegate should] beNonNil];
    });
    
    it(@"DXTableView DataSource and Delegate must be kind of DXDataSource and DXDelegate", ^{
        [[(id)tableView.dataSource should] beKindOfClass:[DXDataSource class]];
        [[(id)tableView.delegate should] beKindOfClass:[DXDelegate class]];
        
        
        
    });
    
    
});

SPEC_END