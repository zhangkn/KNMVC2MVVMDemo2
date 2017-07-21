//
//  KNMVC2MVVMDemo2Tests.m
//  KNMVC2MVVMDemo2Tests
//
//  Created by devzkn on 21/07/2017.
//  Copyright © 2017 hisun. All rights reserved.
//

#import <XCTest/XCTest.h>

#import <Specta/Specta.h>
#define EXP_SHORTHAND
#import <Expecta/Expecta.h>
#import <OCMock/OCMock.h>
#import "KNPersonViewModel.h"


SpecBegin(Person)
NSString *salutation = @"Dr.";
NSString *firstName = @"first";
NSString *lastName = @"last";
NSDate *birthdate = [NSDate dateWithTimeIntervalSince1970:0];

it (@"should use the salutation available. ", ^{
    KNPerson *person = [[KNPerson alloc] initWithSalutation:salutation firstName:firstName lastName:lastName birthdate:birthdate];
    KNPersonViewModel *viewModel = [[KNPersonViewModel alloc] initWithPerson:person];
    expect(viewModel.nameText).to.equal(@"Dr. first last");//nameText
});

it (@"should not use an unavailable salutation. ", ^{// 验证nameText
    KNPerson *person = [[KNPerson alloc] initWithSalutation:nil firstName:firstName lastName:lastName birthdate:birthdate];
    KNPersonViewModel *viewModel = [[KNPersonViewModel alloc] initWithPerson:person];
    expect(viewModel.nameText).to.equal(@"first last");
});

it (@"should use the correct date format. ", ^{// 验证日期格式
    KNPerson *person = [[KNPerson alloc] initWithSalutation:nil firstName:firstName lastName:lastName birthdate:birthdate];
    KNPersonViewModel *viewModel = [[KNPersonViewModel alloc] initWithPerson:person];
//    expect(viewModel.birthdateText).to.equal(@"Thursday January 1, 1970");
    expect(viewModel.birthdateText).to.equal(@"星期四 一月 1, 1970");

});
SpecEnd


/**
 关闭正在模拟器中运行的程序并按下Command-U进行测试
 */
@interface KNMVC2MVVMDemo2Tests : XCTestCase

@end

@implementation KNMVC2MVVMDemo2Tests







- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    
    
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
    

    
}

@end
