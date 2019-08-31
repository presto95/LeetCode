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
    let sorted = array.sorted(by: <)
    if sorted != array {
      result += 1
    }
  }
  
  return result
}
