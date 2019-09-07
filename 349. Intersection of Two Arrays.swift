//
//  349. Intersection of Two Arrays.swift
//  LeetCode
//
//  Created by Presto on 07/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

private func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
  return Array(Set(nums1).intersection(Set(nums2)))
}
