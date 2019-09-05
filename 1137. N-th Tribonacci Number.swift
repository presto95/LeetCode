//
//  1137. N-th Tribonacci Number.swift
//  LeetCode
//
//  Created by Presto on 04/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func tribonacci(_ n: Int) -> Int {
  if n == 0 { return 0 }
  if n == 1 { return 1 }
  if n == 2 { return 1 }
  
  var first = 0
  var second = 1
  var third = 1
  
  for _ in 3...n {
    let new = first + second + third
    let secondToFirst = second
    let thirdToSecond = third
    first = secondToFirst
    second = thirdToSecond
    third = new
  }
  
  return third
}
