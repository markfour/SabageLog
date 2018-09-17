//
//  LogListViewModel.swift
//  SabageLog
//
//  Created by kazumi hayashida on 2018/05/30.
//  Copyright © 2018年 kazumi hayashida. All rights reserved.
//

import UIKit
import RealmSwift

class LogListViewModel: Object {
  @objc dynamic var itemId: String = UUID().uuidString
  @objc dynamic var title: String = ""
  
  override static func primaryKey() -> String? {
    return "itemId"
  }
}
