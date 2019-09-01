//
//  876. Middle of the Linked List.swift
//  LeetCode
//
//  Created by Presto on 01/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Definition for singly-linked list */

private class ListNode {
  var val: Int
  var next: ListNode?
  init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

/* Solution */

private func middleNode(_ head: ListNode?) -> ListNode? {
  var countHead = head
  var count = 1
  while countHead?.next != nil {
    countHead = countHead?.next
    count += 1
  }
  var index = count / 2
  var resultHead = head
  while index != 0 {
    resultHead = resultHead?.next
    index -= 1
  }
  return resultHead
}
