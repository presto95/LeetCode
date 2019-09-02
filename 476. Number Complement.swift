//
//  476. Number Complement.swift
//  LeetCode
//
//  Created by Presto on 03/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func findComplement(_ num: Int) -> Int {
  return integer(ofBinaryString: complement(ofBinaryString: binaryString(ofInteger: num)))
}

private func binaryString(ofInteger number: Int) -> String {
  var result = ""
  var number = number
  while number != 0 {
    let remainder = number % 2
    let mok = number / 2
    result = "\(remainder)" + result
    number = mok
  }
  return result
}

private func complement(ofBinaryString string: String) -> String {
  return string.map { "\($0)" == "0" ? "1" : "0" }.reduce("") { $0 + "\($1)" }
}

private func integer(ofBinaryString string: String) -> Int {
  var result = 0
  let count = string.count
  var multiplying = 1
  for index in stride(from: count - 1, through: 0, by: -1) {
    let character = string[string.index(string.startIndex, offsetBy: index)]
    let number = Int("\(character)")!
    result += number * multiplying
    multiplying *= 2
  }
  return result
}
