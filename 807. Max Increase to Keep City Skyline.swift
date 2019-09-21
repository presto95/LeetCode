//
//  807. Max Increase to Keep City Skyline.swift
//  LeetCode
//
//  Created by Presto on 21/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
  let count = grid.count
  var result = 0

  let horizontalSkyline = { () -> [Int] in
    var result = [Int]()
    for row in grid {
      result.append(row.max()!)
    }
    return result
  }()

  let verticalSkyline = { () -> [Int] in
    var result = [Int]()
    for i in 0..<count {
      var temp = [Int]()
      for j in 0..<count {
        temp.append(grid[j][i])
      }
      result.append(temp.max()!)
    }
    return result
  }()

  for i in 0..<count {
    for j in 0..<count {
      var element = grid[i][j]
      let horizontalLimit = horizontalSkyline[i]
      let verticalLimit = verticalSkyline[j]
      while element < horizontalLimit, element < verticalLimit {
        result += 1
        element += 1
      }
    }
  }
  
  return result
}
