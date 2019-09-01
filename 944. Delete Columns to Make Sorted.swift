//
//  944. Delete Columns to Make Sorted.swift
//  LeetCode
//
//  Created by Presto on 31/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func minDeletionSize(_ A: [String]) -> Int {
  var result = 0
  
  let newArray = A.map { $0.map { "\($0)" } }
  let count = newArray.first?.count ?? 0
  
  var resultArray = [[String]]()
  
  for i in 0..<count {
    resultArray.append(newArray.map { $0[i] })
  }
  
  for array in resultArray {
    let count = array.count
    var isAscending = true
    for index in 0..<count - 1 {
      let first = array[index]
      let second = array[index + 1]
      if first > second {
        isAscending.toggle()
        break
      }
    }
    if !isAscending { result += 1 }
  }
  
  return result
}
