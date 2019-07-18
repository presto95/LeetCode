//
//  main.swift
//  LeetCode
//
//  Created by Presto on 11/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import Foundation

let text = "alice is a good girl she is a good student"
let first = "a"
let second = "good"

var results = [String]()

let splitted = text.components(separatedBy: " ")

let count = splitted.count

for i in 0..<count - 2 {
  if splitted[i] == first && splitted[i + 1] == second {
    results.append(splitted[i + 2])
  }
}

print(results)
