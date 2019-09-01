//
//  922. Sort Array By Parity II.swift
//  LeetCode
//
//  Created by Presto on 01/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func sortArrayByParityII(_ A: [Int]) -> [Int] {
  var odds = [Int]()
  var evens = [Int]()
  var result = [Int]()
  
  for element in A {
    if element.isMultiple(of: 2) {
      evens.append(element)
    } else {
      odds.append(element)
    }
  }
  
  zip(evens, odds).forEach {
    result.append($0)
    result.append($1)
  }
  
  return result
}
