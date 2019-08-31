//
//  942. DI String Match.swift
//  LeetCode
//
//  Created by Presto on 31/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func diStringMatch(_ S: String) -> [Int] {
  let count = S.count
  var increaseNumber = 0
  var decreseNumber = count
  var sum = (0...count).reduce(0, +)
  
  var result = [Int]()
  
  let firstCharacter = S.first
  
  if firstCharacter == "I" {
    result.append(0)
    increaseNumber += 1
  } else {
    result.append(count)
    sum -= count
    decreseNumber -= 1
  }
  
  for index in 0..<count - 1 {
    let firstCharacter = S[S.index(S.startIndex, offsetBy: index)]
    let secondCharacter = S[S.index(S.startIndex, offsetBy: index + 1)]
    switch (firstCharacter, secondCharacter) {
    case ("I", "I"):
      result.append(increaseNumber)
      sum -= increaseNumber
      increaseNumber += 1
    case ("I", "D"):
      result.append(decreseNumber)
      sum -= decreseNumber
      decreseNumber -= 1
    case ("D", "I"):
      result.append(increaseNumber)
      sum -= increaseNumber
      increaseNumber += 1
    case ("D", "D"):
      result.append(decreseNumber)
      sum -= decreseNumber
      decreseNumber -= 1
    default:
      break
    }
  }
  
  result.append(sum)

  return result
}
