//
//  ModifyOperator.swift
//  ModifyOperator
//
//  Created by Nguyen Duc Hiep on 2/4/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

import Foundation

precedencegroup NDModifyPrecedence {
  associativity: left
  higherThan: AssignmentPrecedence
}

infix operator •: NDModifyPrecedence

// swiftlint:disable:next identifier_name
@discardableResult
@inlinable
public func • <T>(left: T, right: (inout T) -> Void) -> T {
  var value = left
  right(&value)
  return value
}

infix operator •?: NDModifyPrecedence

// swiftlint:disable:next identifier_name
@discardableResult
@inlinable
public func •? <T>(
  left: T?,
  right: (inout T) -> Void
) -> T? {
  if let left = left {
    return left • right
  }
  return nil
}
