//
//  867. Transpose Matrix.swift
//  LeetCode
//
//  Created by Presto on 02/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func transpose(_ A: [[Int]]) -> [[Int]] {
  let numberOfRows = A.count
  let numberOfColumns = A.first!.count
  
  var matrix = [[Int]]()
  
  for i in 0..<numberOfColumns {
    var tempArray = [Int]()
    for j in 0..<numberOfRows {
      let element = A[j][i]
      tempArray.append(element)
    }
    matrix.append(tempArray)
  }
  return matrix
}
