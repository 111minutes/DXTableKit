//
//  DXTableKitTests.m
//  DXTableKitTests
//
//  Created by TheSooth on 10/10/12.
//  Copyright (c) 2012 TheSooth. All rights reserved.
//

#import "DXTableKitTests.h"
#import "DXController.h"
#import "Kiwi.h"

@implementation DXTableKitTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)test {
    id mockedClass = [DXController mock];
    id mock = [KWMock nullMockWithName:@"Controller" forClass:mockedClass];
    
    STAssertNotNil(mock, @"expected a mock object to be initialized");
    STAssertEqualObjects([mock mockedClass], mockedClass, @"expected the mockedClass property to be set");
    STAssertTrue([mock isNullMock], @"expected the isNullObject property to be set");

    
}

@end
