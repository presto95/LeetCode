//
//  804. Unique Morse Code Words.swift
//  LeetCode
//
//  Created by Presto on 12/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func uniqueMorseRepresentations(_ words: [String]) -> Int {
  let alphabets = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  let morseCodes = [".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--.."]
  var results = Set<String>()
  for word in words {
    var result = ""
    for alphabet in word {
      let string = String(alphabet)
      let index = alphabets.firstIndex(of: string)!
      let morseCode = morseCodes[index]
      result += morseCode
    }
    results.insert(result)
  }
  return results.count
}

