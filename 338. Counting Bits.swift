//
//  338. Counting Bits.swift
//  LeetCode
//
//  Created by Presto on 01/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func countBits(_ num: Int) -> [Int] {
  var dictionary = [Int: Int]()
  var result = [Int]()
  
  for number in 0...num {
    let quotient = number / 2
    let remainder = number % 2
    let memoization = dictionary[quotient] ?? 0
    let current = remainder + memoization
    dictionary[number] = current
    result.append(current)
  }
  
  return result
}
