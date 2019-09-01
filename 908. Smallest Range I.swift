//
//  908. Smallest Range I.swift
//  LeetCode
//
//  Created by Presto on 01/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func smallestRangeI(_ A: [Int], _ K: Int) -> Int {
  let max = A.max()!
  let min = A.min()!
  
  let minus = max - min
  let result = minus - K * 2
  
  return result < 0 ? 0 : result
}
