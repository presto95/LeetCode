//
//  1047. Remove All Adjacent Duplicates In String.swift
//  LeetCode
//
//  Created by Presto on 03/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//


private func removeDuplicates(_ S: String) -> String {
  var array = S.map { "\($0)" }
  
  while true {
    var flag = false
    let count = array.count
    if count == 0 { return "" }
    for i in 0..<count - 1 {
      let first = array[i]
      let second = array[i + 1]
      if first == second {
        flag = true
        array[i] = ""
        array[i + 1] = ""
      }
    }
    if !flag { break }
    array = array.filter { !$0.isEmpty }
  }
  
  return array.reduce("") { $0 + "\($1)" }
}
