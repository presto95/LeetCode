//
//  929. Unique Email Address.swift
//  LeetCode
//
//  Created by Presto on 15/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func numUniqueEmails(_ emails: [String]) -> Int {
  let convertedEmails = emails
    .map { $0.components(separatedBy: "@") }
    .map { emailComponents -> String in
      let localName = emailComponents.first!
      let domain = emailComponents.last!
      let dotToWhitespace = localName.replacingOccurrences(of: ".", with: "")
      let splittedByPlus = dotToWhitespace.components(separatedBy: "+")
      let uniqueLocalName = splittedByPlus.first!
      return uniqueLocalName + "@" + domain
    }
  let uniqueEmails = Set(convertedEmails)
  return uniqueEmails.count
}

