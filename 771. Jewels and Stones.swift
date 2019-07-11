//
//  771. Jewels and Stones.swift
//  LeetCode
//
//  Created by Presto on 11/07/2019.
//  Copyright © 2019 presto. All rights reserved.
//

func numJewelsInStones(_ J: String, _ S: String) -> Int {
  let jewels = J.map { $0 }
  let stones = S.map { $0 }
  return jewels.reduce(0) { result, jewel in
    result + stones.filter { $0 == jewel }.count
  }
}
