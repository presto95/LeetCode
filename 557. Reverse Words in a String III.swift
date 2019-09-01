//
//  557. Reverse Words in a String III.swift
//  LeetCode
//
//  Created by Presto on 01/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func reverseWords(_ s: String) -> String {
  var result = s.components(separatedBy: " ")
    .map { Array($0.reversed()) }
    .map { $0.reduce("") { $0 + "\($1)" }}
    .reduce("") { $0 + $1 + " " }
  result.removeLast()
  return result
}
