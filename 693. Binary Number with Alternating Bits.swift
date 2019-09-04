//
//  693. Binary Number with Alternating Bits.swift
//  LeetCode
//
//  Created by Presto on 04/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func hasAlternatingBits(_ n: Int) -> Bool {
  let string = binaryString(ofInteger: n)
  let count = string.count
  
  for i in 0..<count - 1 {
    let first = string[string.index(string.startIndex, offsetBy: i)]
    let second = string[string.index(string.startIndex, offsetBy: i + 1)]
    if first == second {
      return false
    }
  }
  return true
}

private func binaryString(ofInteger number: Int) -> String {
  var result = ""
  var number = number
  while number != 0 {
    let mok = number / 2
    let remainder = number % 2
    number = mok
    result += "\(remainder)"
  }
  return result
}

