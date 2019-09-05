//
//  999. Available Captures for Rook.swift
//  LeetCode
//
//  Created by Presto on 05/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func numRookCaptures(_ board: [[Character]]) -> Int {
  let numberOfRows = 8
  let numberOfColumns = 8
  
  var count = 0
  var rIndex: (row: Int, column: Int) = (0, 0)
  
  // find index of R
  for i in 0..<numberOfRows {
    for j in 0..<numberOfColumns {
      if board[i][j] == "R" {
        rIndex = (i, j)
      }
    }
  }
  
  // left
  for i in stride(from: rIndex.column - 1, through: 0, by: -1) {
    let character = board[rIndex.row][i]
    if character == "B" { break }
    if character == "p" {
      count += 1
      break
    }
  }
  
  // right
  for i in rIndex.column + 1 ..< numberOfColumns {
    let character = board[rIndex.row][i]
    if character == "B" { break }
    if character == "p" {
      count += 1
      break
    }
  }
  
  // top
  for i in stride(from: rIndex.row - 1, through: 0, by: -1) {
    let character = board[i][rIndex.column]
    if character == "B" { break }
    if character == "p" {
      count += 1
      break
    }
  }
  
  // bottom
  for i in rIndex.row + 1 ..< numberOfRows {
    let character = board[i][rIndex.column]
    if character == "B" { break }
    if character == "p" {
      count += 1
      break
    }
  }
  
  return count
}
