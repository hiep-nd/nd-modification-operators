//
//  NDModificationOperatorsTests.m
//  NDModificationOperatorsTests
//
//  Created by Nguyen Duc Hiep on 6/25/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <XCTest/XCTest.h>

#import <NDModificationOperators/NDModificationOperators.h>

@interface NDModificationOperatorsTests : XCTestCase

@end

@implementation NDModificationOperatorsTests

- (void)testModify {
  auto str = [[NSMutableString alloc] initWithString:@"a"];
  // must catch a 'warn_unused_result' compile
  [[str nd_modify:^(NSMutableString* s) {
    [s appendString:@"b"];
  }] nd_modify:^(NSMutableString* s) {
    [s appendString:@"c"];
  }];

  XCTAssertEqualObjects(str, @"abc");
}

- (void)testDone {
  auto str = [[NSMutableString alloc] initWithString:@"a"];
  [[str nd_modify:^(NSMutableString* s) {
    [s appendString:@"b"];
  }] nd_done:^(NSMutableString* s) {
    [s appendString:@"c"];
  }];

  XCTAssertEqualObjects(str, @"abc");
}

@end
