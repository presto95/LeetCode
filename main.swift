//
//  main.swift
//  LeetCode
//
//  Created by Presto on 11/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import Foundation

let alphabets = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
let morseCodes = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]

let words = ["gin", "zen", "gig", "msg"]
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

print(results)
