//
//  ContentView.swift
//  SabageLog
//
//  Created by Markfour on 2022/05/08.
//

import SwiftUI

struct GameLog: Identifiable {
    let id: UUID = UUID()
    let date: Date = Date()
    let fieldName: String
}

struct GameLogListItemView: View {
    var gameLog: GameLog

    var body: some View {
        VStack {
            Text(gameLog.date.logDate())
            Text(gameLog.fieldName)
        }
    }
}

struct ContentView: View {
    private var gameLogs:[GameLog] = [
        GameLog(fieldName: "森林フィールド"),
        GameLog(fieldName: "デザートフィールド"),
        GameLog(fieldName: "インドア"),
        GameLog(fieldName: "インドア、森林混合フィールド"),
    ]

    var body: some View {
        List {
            ForEach(gameLogs) { gameLog in
                GameLogListItemView(gameLog: gameLog)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
