//
//  1185. Day of the Week.swift
//  LeetCode
//
//  Created by Presto on 21/09/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import Foundation

/* Solution */

private func dayOfTheWeek(_ day: Int, _ month: Int, _ year: Int) -> String {
  let calendar = Calendar.current.date(from: .init(year: year, month: month, day: day))!

  let day = Calendar.current.component(.weekday, from: calendar)

  switch day {
  case 1:
    return "Sunday"
  case 2:
    return "Monday"
  case 3:
    return "Tuesday"
  case 4:
    return "Wednesday"
  case 5:
    return "Thursday"
  case 6:
    return "Friday"
  case 7:
    return "Saturday"
  default:
    return ""
  }
}
