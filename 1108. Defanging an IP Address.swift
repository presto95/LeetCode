//
//  1108. Defanging an IP Address.swift
//  LeetCode
//
//  Created by Presto on 11/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

/* Solution */

private func defangIPaddr(_ address: String) -> String {
  return address.replacingOccurrences(of: ".", with: "[.]")
}
