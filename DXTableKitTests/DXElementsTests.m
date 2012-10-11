#import "Kiwi.h"
#import "DXController.h"
#import "DXLabelElement.h"

SPEC_BEGIN(DXElementsTests)

describe(@"Elements Tests", ^{
    
    __block DXRootElement *root;
    __block DXLabelElement *labelElement;
    
    beforeAll(^{
        root = [[DXRootElement alloc] initWithTitle:@"Root Element"];
        labelElement = [[DXLabelElement alloc] initWithTitle:@"LabelElement"];
    });
    
    it(@"DXRootElementTest", ^{
        [[root should] beKindOfClass:[DXElement class]];
        
        [[theValue(root.title) should] equal:theValue(@"Root Element")];
        
    });
    
    it(@"DXLabelElementTest", ^{
        [[labelElement should] beKindOfClass:[DXRootElement class]];
    });
});

SPEC_END