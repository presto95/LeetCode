//
//  874. Walking Robot Simulation.swift
//  LeetCode
//
//  Created by Presto on 05/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func robotSim(_ commands: [Int], _ obstacles: [[Int]]) -> Int {
  let bias = 30000
  
  var point = Point(x: bias, y: bias)
  var direction = Direction.top
  var result = 0
  
  var grid = [[Bool]](repeating: [Bool](repeating: false, count: bias * 2 + 1), count: bias * 2 + 1)
  
  
  for obstacle in obstacles {
    let x = obstacle.first! + bias
    let y = obstacle.last! + bias
    grid[x][y] = true
  }
  
  for command in commands {
    if command == -2 {
      direction.turnLeft()
    } else if command == -1 {
      direction.turnRight()
    } else {
      switch direction {
      case .top:
        for _ in 0..<command {
          point.y += 1
          if grid[point.x][point.y] {
            point.y -= 1
            break
          }
        }
      case .left:
        for _ in 0..<command {
          point.x -= 1
          if grid[point.x][point.y] {
            point.x += 1
            break
          }
        }
      case .bottom:
        for _ in 0..<command {
          point.y -= 1
          if grid[point.x][point.y] {
            point.y += 1
            break
          }
        }
      case .right:
        for _ in 0..<command {
          point.x += 1
          if grid[point.x][point.y] {
            point.x -= 1
            break
          }
        }
      }
    }
    let referenceX = point.x - bias
    let referenceY = point.y - bias
    
    let square = referenceX * referenceX + referenceY * referenceY
    if result < square {
      result = square
    }
  }
  return result
}

private struct Point: Equatable {
  var x: Int
  var y: Int
}

private enum Direction: Int {
  case top = 0
  case left
  case bottom
  case right
  
  mutating func turnLeft() {
    if rawValue + 1 == 4 {
      self = .top
    } else {
      self = Direction(rawValue: rawValue + 1)!
    }
  }
  
  mutating func turnRight() {
    if rawValue - 1 == -1 {
      self = .right
    } else {
      self = Direction(rawValue: rawValue - 1)!
    }
  }
}
