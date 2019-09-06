//
//  762. Prime Number of Set Bits in Binary Representation.swift
//  LeetCode
//
//  Created by Presto on 06/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import Foundation

private func countPrimeSetBits(_ L: Int, _ R: Int) -> Int {
  var result = 0
  
  for number in L...R {
    let binary = binaryString(ofInteger: number)
    var countOfOne = 0
    for character in binary {
      if character == "1" {
        countOfOne += 1
      }
    }
    if isPrime(of: countOfOne) {
      result += 1
    }
  }
  
  return result
}

private func binaryString(ofInteger number: Int) -> String {
  var number = number
  var result = ""
  while number != 0 {
    result += "\(number % 2)"
    number /= 2
  }
  return result
}

private func isPrime(of number: Int) -> Bool {
  if number == 1 { return false }
  if number <= 3 { return true }
  let squareRoot = Int(sqrt(Double(number)))
  for i in 2...squareRoot {
    if number % i == 0 {
      return false
    }
  }
  return true
}
