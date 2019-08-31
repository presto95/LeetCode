//
//  1160. Find Words That Can Be Formed by Characters.swift
//  LeetCode
//
//  Created by Presto on 31/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func countCharacters(_ words: [String], _ chars: String) -> Int {
  var result = 0
  
  for word in words {
    var mutatingWord = word
    for character in chars {
      if let index = mutatingWord.firstIndex(of: character) {
        mutatingWord.remove(at: index)
      }
    }
    if mutatingWord.isEmpty {
      result += word.count
    }
  }
  return result
}
