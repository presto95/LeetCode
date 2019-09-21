//
//  1089. Duplicate Zeros.swift
//  LeetCode
//
//  Created by Presto on 21/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func duplicateZeros(_ arr: inout [Int]) {
  var refIndex = 0
  let count = arr.count
  while refIndex != count {
    if arr[refIndex] == 0 {
      if refIndex + 1 != count {
        refIndex += 1
        arr.insert(0, at: refIndex)
        arr.removeLast()
      }
    }
    refIndex += 1
  }
}
