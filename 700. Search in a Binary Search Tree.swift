//
//  700. Search in a Binary Search Tree.swift
//  LeetCode
//
//  Created by Presto on 01/09/2019.
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

private func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
  if root == nil { return nil }
  if root?.val == val { return root }
  if let leftSearch = searchBST(root?.left, val) { return leftSearch }
  if let rightSearch = searchBST(root?.right, val) { return rightSearch}
  return nil
}

