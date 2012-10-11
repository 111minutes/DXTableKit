#import "Kiwi.h"
#import "DXController.h"
#import "DXLabelElement.h"

SPEC_BEGIN(DXSectionTest)

describe(@"DXSections Tests", ^{
    
    __block DXSection *section;
    
    beforeAll(^{
        section = [[DXSection alloc] initWithTitle:@"Test Section"];
    });
    
    it(@"Testing Section Title", ^{
        [[theValue(section.title) should] equal:theValue(@"Test Section")];
    });
    it(@"Testing add Object to the Section", ^{
        [[theValue(section.elements.count) should] equal:theValue(0)];
        
        DXLabelElement *labelElement = [[DXLabelElement alloc] initWithTitle:@"Label Element"];
        [section addElement:labelElement];
        
        [[theValue([section indexOfElement:labelElement]) should] equal:theValue(0)];
        [[theValue(section.elements.count) should] equal:theValue(1)];
        
        DXLabelElement *labelElementFromSection = [section.elements objectAtIndex:0];
        
        [[theValue(labelElementFromSection.title) should] equal:theValue(@"Label Element")];
    });
    
});

SPEC_END