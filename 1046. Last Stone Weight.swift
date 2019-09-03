//
//  1046. Last Stone Weight.swift
//  LeetCode
//
//  Created by Presto on 03/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func lastStoneWeight(_ stones: [Int]) -> Int {
  var stones = stones
  
  while stones.count > 1 {
    let first = stones.max()!
    let firstIndex = stones.firstIndex(of: first)!
    stones[firstIndex] = 0
    let second = stones.max()!
    let secondIndex = stones.firstIndex(of: second)!
    stones[secondIndex] = 0
    if first != second {
      stones[firstIndex] = first - second
    }
    stones = stones.filter { $0 != 0 }
  }
  
  return stones.first ?? 0
}
