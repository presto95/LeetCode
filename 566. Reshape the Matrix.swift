//
//  566. Reshape the Matrix.swift
//  LeetCode
//
//  Created by Presto on 06/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
  let flatMappedNums = nums.flatMap { $0 }
  
  let numberOfRows = nums.count
  let numberOfColumns = nums.first!.count
  
  if r * c != numberOfRows * numberOfColumns {
    return nums
  }
  
  var array = [[Int]](repeating: [Int](repeating: 0, count: c), count: r)
  
  for i in 0..<r {
    for j in 0..<c {
      array[i][j] = flatMappedNums[i * c + j]
    }
  }
  
  return array
}
