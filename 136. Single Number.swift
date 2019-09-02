//
//  136. Single Number.swift
//  LeetCode
//
//  Created by Presto on 03/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func singleNumber(_ nums: [Int]) -> Int {
  var dictioary = [Int: Int]()
  
  for number in nums {
    if let value = dictioary[number] {
      dictioary[number] = value + 1
    } else {
      dictioary[number] = 1
    }
  }
  
  return dictioary.filter { $0.value == 1 }.map { $0.key }.first!
}
