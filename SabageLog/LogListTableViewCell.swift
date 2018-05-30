//
//  LogListTableViewCell.swift
//  SabageLog
//
//  Created by kazumi hayashida on 2018/05/30.
//  Copyright © 2018年 kazumi hayashida. All rights reserved.
//

import UIKit

class LogListTableViewCell: UITableViewCell {
  @IBOutlet private weak var dateLabel: UILabel!
  @IBOutlet private weak var gameFiledLabel: UILabel!
  
  public var date: Date {
    get {
      return Date()
    }
    set {
      let formatter = DateFormatter()
      formatter.dateStyle = .long
      formatter.timeStyle = .none
      dateLabel.text = formatter.string(from: newValue)
    }
  }
  
  public var gameFiled: String  {
    get {
      if let text = gameFiledLabel.text {
        return text
      } else {
        return ""
      }
    }
    set {
      gameFiledLabel.text = self.gameFiled
    }
  }
}
