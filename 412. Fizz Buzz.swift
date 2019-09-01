//
//  412. Fizz Buzz.swift
//  LeetCode
//
//  Created by Presto on 01/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func fizzBuzz(_ n: Int) -> [String] {
  var result = [String]()
  
  for i in 1...n {
    let isDividedByThree = i.isMultiple(of: 3)
    let isDividedByFive = i.isMultiple(of: 5)
    if isDividedByThree && isDividedByFive {
      result.append("FizzBuzz")
    } else if isDividedByThree {
      result.append("Fizz")
    } else if isDividedByFive {
      result.append("Buzz")
    } else {
      result.append("\(i)")
    }
  }
  
  return result
}
