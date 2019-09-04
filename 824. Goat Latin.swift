//
//  824. Goat Latin.swift
//  LeetCode
//
//  Created by Presto on 04/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func toGoatLatin(_ S: String) -> String {
  let words = S.components(separatedBy: " ")
  var result = [String]()
  let vowels = ["a", "e", "i", "o", "u"]
  
  for word in words {
    var temp = ""
    let firstCharacter = "\(word.first!)"
    let lowercase = firstCharacter.lowercased()
    if vowels.contains(lowercase) {
      temp = word + "ma"
    } else {
      var word = word
      let firstCharacter = "\(word.removeFirst())"
      word += firstCharacter
      temp = word + "ma"
    }
    result.append(temp)
  }
  
  let count = result.count
  for index in 0..<count {
    let appending = String(repeating: "a", count: index + 1)
    let current = result[index]
    result[index] = current + appending
  }
  
  var resultString = result.reduce("") { $0 + " " + $1 }
  resultString.removeFirst()
  return resultString
}
