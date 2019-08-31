//
//  561. Array Partition 1.swift
//  LeetCode
//
//  Created by Presto on 31/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func arrayPairSum(_ nums: [Int]) -> Int {
  let sorted = nums.sorted(by: <)
  let count = nums.count / 2
  var result = 0
  for i in 0..<count {
    result += sorted[i * 2]
  }
  return result
}
