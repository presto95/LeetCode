//
//  811. Subdomain Visit Count.swift
//  LeetCode
//
//  Created by Presto on 01/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import Foundation

/* Solution */

private func subdomainVisits(_ cpdomains: [String]) -> [String] {
  var dictionary = [String: Int]()
  
  for domain in cpdomains {
    let splitted = domain.components(separatedBy: " ")
    let count = Int(splitted.first!)!
    let domains = splitted.last!
    let components = makeComponents(from: domains)
    for component in components {
      if let value = dictionary[component] {
        dictionary[component] = value + count
      } else {
        dictionary[component] = count
      }
    }
  }
  
  let mapped = dictionary.map { "\($0.value) \($0.key)" }
  return mapped
}

private func makeComponents(from string: String) -> [String] {
  var result = [String]()
  let splitted = Array(string.components(separatedBy: ".").reversed())
  let count = splitted.count
  for i in 0..<count {
    var tempString = ""
    for j in 0...i {
      tempString = splitted[j] + "." + tempString
    }
    tempString.removeLast()
    result.append(tempString)
  }
  return result
}
