//
//  657. Robot Return to Origin.swift
//  LeetCode
//
//  Created by Presto on 13/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func judgeCircle(_ moves: String) -> Bool {
  var (x, y) = (0, 0)
  let enums = moves.map { Move(rawValue: $0)! }
  for move in enums {
    switch move {
    case .up:
      y += 1
    case .down:
      y -= 1
    case .left:
      x -= 1
    case .right:
      x += 1
    }
  }
  return (x, y) == (0, 0)
}

private enum Move: Character {
  
  case up = "U"
  
  case down = "D"
  
  case left = "L"
  
  case right = "R"
}
