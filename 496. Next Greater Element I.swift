//
//  496. Next Greater Element I.swift
//  LeetCode
//
//  Created by Presto on 04/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
  var result = [Int]()
  
  let nums2Count = nums2.count
  
  for number in nums1 {
    var isContained = false
    let index = nums2.firstIndex(of: number)!
    for i in index..<nums2Count {
      if number < nums2[i] {
        result.append(nums2[i])
        isContained = true
        break
      }
    }
    if !isContained { result.append(-1) }
  }
  
  return result
}
