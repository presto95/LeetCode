//
//  1078. Occurrences After Bigram.swift
//  LeetCode
//
//  Created by Presto on 18/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */


private func findOcurrences(_ text: String, _ first: String, _ second: String) -> [String] {
  var results = [String]()
  let splitted = text.components(separatedBy: " ")
  
  let count = splitted.count
  
  for i in 0..<count - 2 {
    if splitted[i] == first && splitted[i + 1] == second {
      results.append(splitted[i + 2])
    }
  }
  return results
}

