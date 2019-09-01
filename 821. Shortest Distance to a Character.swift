//
//  821. Shortest Distance to a Character.swift
//  LeetCode
//
//  Created by Presto on 01/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func shortestToChar(_ S: String, _ C: Character) -> [Int] {
  let count = S.count
  var array = [Int]()
  var result = [Int]()
  
  for (index, element) in S.enumerated() {
    if element == C {
      array.append(index)
    }
  }
  
  for i in 0..<count {
    let distance = array.map { abs($0 - i) }.min()!
    result.append(distance)
  }
  
  return result
}
