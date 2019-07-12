//
//  905. Sort Array By Parity.swift
//  LeetCode
//
//  Created by Presto on 12/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func sortArrayByParity(_ A: [Int]) -> [Int] {
  var result = [Int]()
  for element in A {
    if element.isMultiple(of: 2) {
      result.insert(element, at: 0)
    } else {
      result.append(element)
    }
  }
  return result
}
