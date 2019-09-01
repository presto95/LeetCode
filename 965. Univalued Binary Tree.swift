//
//  965. Univalued Binary Tree.swift
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

private func isUnivalTree(_ root: TreeNode?) -> Bool {
  var set = Set<Int>()
  if let root = root {
    traverse(root, &set)
  }
  if set.count != 1 { return false }
  return true
}

private func traverse(_ node: TreeNode?, _ set: inout Set<Int>) {
  if let node = node {
    set.insert(node.val)
    traverse(node.left, &set)
    traverse(node.right, &set)
  }
}
