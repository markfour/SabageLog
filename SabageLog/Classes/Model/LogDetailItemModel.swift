//
//  LogDetailItelModel.swift
//  SabageLog
//
//  Created by kazumi hayashida on 2018/09/17.
//  Copyright © 2018年 kazumi hayashida. All rights reserved.
//

import Foundation

class LogDetailItemModel {
  enum Category {
    case date
    case potition
    case memberNumber
    case gameCount
    case usedGun
    case kill
    case death
  }
  
  class func title(category: Category) -> String {
    switch category {
    case .date:
      return "日付"
    case .potition:
      return "フィールド"
    case .memberNumber:
      return "人数"
    case .gameCount:
      return "ゲーム数"
    case .usedGun:
      return "使用した銃"
    case .kill:
      return "キル数"
    case .death:
      return "デス数"
    }
  }
}
