//
//  main.swift
//  LeetCode
//
//  Created by Presto on 11/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import Foundation

let emails = ["test.email+alex@leetcode.com","test.email.leet+alex@code.com"]
var results = Set<String>()
let splitted = emails.map { $0.components(separatedBy: "@") }
for emailComponents in splitted {
  let localName = emailComponents.first!
  let domain = emailComponents.last!
  let dotToWhitespace = localName.replacingOccurrences(of: ".", with: "")
  let splittedByPlus = dotToWhitespace.components(separatedBy: "+")
  let uniqueLocalName = splittedByPlus.first!
  let uniqueEmail = uniqueLocalName + "@" + domain
  results.insert(uniqueEmail)
}
print(results)
