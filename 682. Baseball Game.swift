//
//  682. Baseball Game.swift
//  LeetCode
//
//  Created by Presto on 04/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func calPoints(_ ops: [String]) -> Int {
  var result = [Int]()
  
  for op in ops {
    let operation = Operation.make(from: op)
    switch operation {
    case let .score(score):
      result.append(score)
    case .plus:
      let count = result.count
      let lastScore = result[count - 1]
      let lastLastScore = result[count - 2]
      result.append(lastScore + lastLastScore)
    case .double:
      let lastScore = result.last ?? 0
      result.append(lastScore * 2)
    case .cancel:
      result.removeLast()
    }
  }
  
  return result.reduce(0, +)
}


private enum Operation {
  
  case score(Int)
  
  case plus
  
  case double
  
  case cancel
  
  static func make(from operation: String) -> Operation {
    if let value = Int(operation) {
      return .score(value)
    } else if operation == "+" {
      return .plus
    } else if operation == "D" {
      return .double
    } else if operation == "C" {
      return .cancel
    } else {
      fatalError()
    }
  }
}
