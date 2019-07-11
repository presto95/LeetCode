//
//  main.swift
//  LeetCode
//
//  Created by Presto on 11/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import Foundation

/* 문제 풀이 */

let J = "aA"
let S = "aAAbbbb"

let jewels = J.map { $0 }
let stones = S.map { $0 }
let asdf = jewels.reduce(0) { result, jewel in
  result + stones.filter { $0 == jewel }.count
}
print(asdf)
