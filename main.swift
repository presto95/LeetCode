//
//  main.swift
//  LeetCode
//
//  Created by Presto on 11/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import Foundation

struct Pair: Hashable, ExpressibleByArrayLiteral {
  let first: Int
  let second: Int
  init(arrayLiteral elements: Int...) {
    first = elements[0]
    second = elements[1]
  }
}

let nums = [1, 4, 3, 2]

var dictionary = [Pair: Int]()

let count = nums.count

for i in 0..<count - 1 {
  for j in i + 1..<count {
    let pair: Pair = [i, j]
    if dictionary[pair] != nil {
      continue
    } else {
      dictionary[pair] = min(nums[i], nums[j])
      let otherPair: Pair = [count - j - 1, count - i - 1]
      dictionary[otherPair] = min(nums[count - j - 1], nums[count - i - 1])
    }
  }
}

