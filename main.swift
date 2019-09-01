//
//  main.swift
//  LeetCode
//
//  Created by Presto on 11/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

let n = 15
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

print(result)
