//
//  977. Squares of a Sorted Array.swift
//  LeetCode
//
//  Created by Presto on 13/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

func sortedSquares(_ A: [Int]) -> [Int] {
  return A.map { $0 * $0 }.sorted(by: <)
}
