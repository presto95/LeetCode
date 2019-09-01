//
//  main.swift
//  LeetCode
//
//  Created by Presto on 11/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

let num = 5

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

