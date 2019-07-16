//
//  1122. Relative Sort Array.swift
//  LeetCode
//
//  Created by Presto on 16/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
  var dictionary = [Int: Int]()
  for (index, element) in arr2.enumerated() {
    dictionary[element] = index
  }
  
  return arr1.sorted { first, second in
    let firstIndex = dictionary[first] ?? -1
    let secondIndex = dictionary[second] ?? -1
    if firstIndex != -1 && secondIndex != -1 {
      return firstIndex < secondIndex
    } else if firstIndex != -1 && secondIndex == -1 {
      return true
    } else if firstIndex == -1 && secondIndex != -1 {
      return false
    } else {
      return first < second
    }
  }
}

// Memoization을 적극 활용하자. 시간을 큰 폭으로 줄일 수 있다.
