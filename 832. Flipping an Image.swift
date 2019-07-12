//
//  832. Flipping an Image.swift
//  LeetCode
//
//  Created by Presto on 12/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
  return A.flippedHorizontally.inverted
}

private extension Array where Element == [Int] {
  
  var flippedHorizontally: [[Int]] {
    var array = self
    let half = count / 2
    for rowIndex in 0..<count {
      for index in 0..<half {
        array[rowIndex].swapAt(index, count - index - 1)
      }
    }
    return array
  }
  
  var inverted: [[Int]] {
    var array = self
    for row in 0..<count {
      for column in 0..<count {
        array[row][column] = array[row][column] == 0 ? 1 : 0
      }
    }
    return array
  }
}
