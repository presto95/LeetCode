//
//  main.swift
//  LeetCode
//
//  Created by Presto on 11/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import Foundation

let N = 4
var first = 0
var second = 1
var third = first + second
for _ in 2..<N {
  first = second
  second = third
  third = first + second
}
print(third)
