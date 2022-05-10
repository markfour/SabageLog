//
//  DateExtention.swift
//  SabageLog
//
//  Created by Markfour on 2022/05/10.
//

import Foundation

extension Date {
    func logDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale(identifier: "ja_JP")

        return dateFormatter.string(from: self)
    }
}
