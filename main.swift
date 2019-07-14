//
//  main.swift
//  LeetCode
//
//  Created by Presto on 11/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import Foundation
let emails = ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
let mapped = emails.map { $0.components(separatedBy: "+@.") }
for email in mapped {
  email.repl
}
