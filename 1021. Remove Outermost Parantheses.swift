//
//  1021. Remove Outermost Parantheses.swift
//  LeetCode
//
//  Created by Presto on 12/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func removeOuterParentheses(_ S: String) -> String {
  var stack = Stack<Character>()
  var characters = [[Character]]()
  var (leftCount, rightCount) = (0, 0)
  let leftCharacter: Character = "("
  let rightCharacter: Character = ")"
  
  for character in S {
    if stack.isEmpty || character == leftCharacter {
      leftCount += 1
      stack.push(character)
      continue
    }
    if character == rightCharacter {
      rightCount += 1
      if leftCount == rightCount {
        characters.append(stack.elements + [character])
        stack.reset()
      } else {
        stack.push(character)
      }
    }
  }
  return characters.reduce("") {
    $0 + $1[1..<$1.count - 1].reduce("") { $0 + String($1) }
  }
}


private struct Stack<Element> {
  
  private var _elements = [Element]()
  
  mutating func push(_ element: Element) {
    _elements.append(element)
  }
  
  mutating func pop() -> Element {
    return _elements.removeLast()
  }
  
  mutating func reset() {
    _elements = [Element]()
  }
  
  func peek() -> Element? {
    return _elements.last
  }
  
  var isEmpty: Bool {
    return _elements.isEmpty
  }
  
  var count: Int {
    return _elements.count
  }
  
  var elements: [Element] {
    return _elements
  }
}
