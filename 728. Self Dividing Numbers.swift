//
//  728. Self Dividing Numbers.swift
//  LeetCode
//
//  Created by Presto on 13/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
  var results = [Int]()
  for number in left...right {
    if evaluate(number) {
      results.append(number)
    }
  }
  return results
}

private func evaluate(_ number: Int) -> Bool {
  let dividers = String(number).map { Int(String($0))! }
  guard !dividers.contains(0) else {
    return false
  }
  for divider in dividers {
    guard number % divider == 0 else {
      return false
    }
  }
  return true
}

