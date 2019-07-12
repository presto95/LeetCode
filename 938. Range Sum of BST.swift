//
//  938. Range Sum of BST.swift
//  LeetCode
//
//  Created by Presto on 12/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Definition for a binary tree node */

private class TreeNode {
  var val: Int
  var left: TreeNode?
  var right: TreeNode?
  init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
  }
}

/* Solution */

private func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
  return traverse(root, left: L, right: R)
}

private func traverse(_ node: TreeNode?, left: Int, right: Int) -> Int {
  var result = 0
  if let value = node?.val {
    if value >= left && value <= right {
      result += value
    }
  }
  if let leftNode = node?.left {
    result += traverse(leftNode, left: left, right: right)
  }
  if let rightNode = node?.right {
    result += traverse(rightNode, left: left, right: right)
  }
  return result
}

