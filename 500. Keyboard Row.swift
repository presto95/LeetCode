//
//  500. Keyboard Row.swift
//  LeetCode
//
//  Created by Presto on 02/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func findWords(_ words: [String]) -> [String] {
  let firstRow = ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"]
  let secondRow = ["a", "s", "d", "f", "g", "h", "j", "k", "l"]
  let thirdRow = ["z", "x", "c", "v", "b", "n", "m"]
  
  var result = [String]()
  
  for word in words {
    result.append(word)
    var type: Int?
    for character in word {
      let lowercase = character.lowercased()
      if firstRow.contains(lowercase) {
        if let wrappedType = type, wrappedType != 0 {
          result.removeLast()
          break
        } else {
          type = 0
        }
      } else if secondRow.contains(lowercase) {
        if let wrappedType = type, wrappedType != 1 {
          result.removeLast()
          break
        } else {
          type = 1
        }
      } else if thirdRow.contains(lowercase) {
        if let wrappedType = type, wrappedType != 2 {
          result.removeLast()
          break
        } else {
          type = 2
        }
      }
    }
  }
  return result
}
