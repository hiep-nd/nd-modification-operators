//
//  NDModifyOperatorObjCTests.m
//  NDModifyOperatorTests
//
//  Created by Nguyen Duc Hiep on 5/20/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import "NDModifyOperatorObjCTests.h"

#import <NDModifyOperator/NDModifyOperator.h>

@implementation NDModifyOperatorObjCTests

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
