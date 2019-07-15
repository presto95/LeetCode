//
//  852. Peak Index in a Mountain Array.swift
//  LeetCode
//
//  Created by Presto on 15/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func peakIndexInMountainArray(_ A: [Int]) -> Int {
  let count = A.count
  for i in 0..<count - 1 {
    let first = A[i]
    let second = A[i + 1]
    if first > second {
      return i
    }
  }
  return 0
}
