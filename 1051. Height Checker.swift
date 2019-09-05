//
//  1051. Height Checker.swift
//  LeetCode
//
//  Created by Presto on 01/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func heightChecker(_ heights: [Int]) -> Int {
  var result = 0
  
  var dictionary = [Int: Int]()
  for height in heights {
    if let value = dictionary[height] {
      dictionary[height] = value + 1
    } else {
      dictionary[height] = 1
    }
  }
  let sorted = dictionary
    .sorted { $0.key < $1.key }
    .map { [Int](repeating: $0.key, count: $0.value) }
    .flatMap { $0 }
  
  zip(heights, sorted).forEach {
    if $0 != $1 { result += 1 }
  }
  
  return result
}
