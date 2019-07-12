//
//  961. N-Repeated Element in Size 2N Array.swift
//  LeetCode
//
//  Created by Presto on 13/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func repeatedNTimes(_ A: [Int]) -> Int {
  var dictionary = [Int: Int]()
  let count = A.count / 2
  for element in A {
    dictionary.updateValue(dictionary[element] ?? 1, forKey: element)
    if let value = dictionary[element] {
      dictionary.updateValue(value + 1, forKey: element)
    } else {
      dictionary.updateValue(1, forKey: element)
    }
  }
  return dictionary.filter { $0.value == count }.first!.key
}

