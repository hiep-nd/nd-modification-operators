//
//  NDModifyOperatorSwiftTests.swift
//  NDModifyOperatorTests
//
//  Created by Nguyen Duc Hiep on 2/4/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

import XCTest

@testable import NDModifyOperator

class NDModifyOperatorSwiftTests: XCTestCase {
  func testModifyOperator() {
    XCTAssert(("a" • { $0 += "b" } • { $0 += "c" }) == "abc")
  }

  func testOptionalModifyOperator() {
    XCTAssert((String?("a") •? { $0 += "b" } •? { $0 += "c" }) == "abc")
    XCTAssert((String?(nil) •? { $0 += "b" } •? { $0 += "c" }) == nil)
  }
}
