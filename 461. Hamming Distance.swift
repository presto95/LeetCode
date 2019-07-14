//
//  461. Hamming Distance.swift
//  LeetCode
//
//  Created by Presto on 13/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func hammingDistance(_ x: Int, _ y: Int) -> Int {
  var x = x
  var y = y
  var result = 0
  
  while x != 0 || y != 0 {
    let xBit = x % 2
    let yBit = y % 2
    if xBit != yBit {
      result += 1
    }
    x /= 2
    y /= 2
  }
  return result
}
