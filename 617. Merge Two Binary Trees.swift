//
//  617. Merge Two Binary Trees.swift
//  LeetCode
//
//  Created by Presto on 15/07/2019.
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

private func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
  if t1 == nil && t2 == nil {
    return nil
  } else if t1 == nil && t2 != nil {
    return t2
  } else if t1 != nil && t2 == nil {
    return t1
  }
  
  let leftValue = t1?.val ?? 0
  let rightValue = t2?.val ?? 0
  let treeNode = TreeNode(leftValue + rightValue)
  traverse(.left, treeNode, t1?.left, t2?.left)
  traverse(.right, treeNode, t1?.right, t2?.right)
  return treeNode
}

private func traverse(_ direction: TraverseDirection,
                      _ resultTree: TreeNode?,
                      _ leftTree: TreeNode?,
                      _ rightTree: TreeNode?) {
  let treeNode: TreeNode?
  if let leftValue = leftTree?.val, let rightValue = rightTree?.val {
    treeNode = TreeNode(leftValue + rightValue)
  } else if let leftValue = leftTree?.val {
    treeNode = TreeNode(leftValue)
  } else if let rightValue = rightTree?.val {
    treeNode = TreeNode(rightValue)
  } else {
    treeNode = nil
  }
  
  switch direction {
  case .left:
    resultTree?.left = treeNode
  case .right:
    resultTree?.right = treeNode
  }
  
  if leftTree?.left != nil || rightTree?.left != nil {
    traverse(.left, treeNode, leftTree?.left, rightTree?.left)
  }
  if leftTree?.right != nil || rightTree?.right != nil {
    traverse(.right, treeNode, leftTree?.right, rightTree?.right)
  }
}

private enum TraverseDirection {
  
  case left
  
  case right
}
