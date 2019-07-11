//
//  Two Sum.swift
//  LeetCode
//
//  Created by Presto on 11/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
  let count = nums.count
  for i in 0..<count - 1 {
    let first = nums[i]
    for j in i + 1..<count {
      let second = nums[j]
      if first + second == target {
        return [i, j]
      }
    }
  }
  return []
}
