//
//  463. Island Perimeter.swift
//  LeetCode
//
//  Created by Presto on 04/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */


private func islandPerimeter(_ grid: [[Int]]) -> Int {
  let numberOfRows = grid.count
  let numberOfColumns = grid.first!.count
  
  var count = 0
  
  for row in 0..<numberOfRows {
    for column in 0..<numberOfColumns {
      let element = grid[row][column]
      if element == 1 {
        let left = (row, column - 1)
        let right = (row, column + 1)
        let top = (row - 1, column)
        let bottom = (row + 1, column)
        
        if column - 1 == -1 {
          count += 1
        } else if grid[left.0][left.1] == 0 {
          count += 1
        }
        
        if column + 1 == numberOfColumns {
          count += 1
        } else if grid[right.0][right.1] == 0 {
          count += 1
        }
        
        if row - 1 == -1 {
          count += 1
        } else if grid[top.0][top.1] == 0 {
          count += 1
        }
        
        if row + 1 == numberOfRows {
          count += 1
        } else if grid[bottom.0][bottom.1] == 0 {
          count += 1
        }
      }
    }
  }
  
  return count
}

