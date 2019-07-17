//
//  509. Fibonacci Number.swift
//  LeetCode
//
//  Created by Presto on 17/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func fib(_ N: Int) -> Int {
  if N == 0 {
    return 0
  }
  if N == 1 {
    return 1
  }
  var first = 0
  var second = 1
  var third = first + second
  for _ in 2..<N {
    first = second
    second = third
    third = first + second
  }
  return third
}
