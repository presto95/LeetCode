//
//  main.swift
//  LeetCode
//
//  Created by Presto on 11/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import Foundation

let arr1 = [2,3,1,3,2,4,6,7,9,2,19]
let arr2 = [2,1,4,3,9,6]
var dictionary = [Int: Int]()
for (index, element) in arr2.enumerated() {
  dictionary[element] = index
}


let sorted = arr1.sorted { first, second in
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

print(sorted)
