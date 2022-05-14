//
//  GameLogDetailView.swift
//  SabageLog
//
//  Created by Markfour on 2022/05/11.
//

import SwiftUI

struct GameLogDetailView: View {
    var gameLog: GameLog

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: nil) {
                Text(gameLog.date.logDate())
                    .font(.caption)

                Text(gameLog.fieldName)
                    .font(.headline)
                Section {
                    Text("参加人数")
                        .font(.caption)
                    Text("40人ぐらい")
                        .font(.body)
                    Text("参加費")
                        .font(.caption)
                    Text("4000円")
                        .font(.body)
                    Text("使用したエアガン")
                        .font(.caption)
                }
                Spacer()
            }

        }.navigationViewStyle(StackNavigationViewStyle())
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct GameLogDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GameLogDetailView(gameLog: GameLog(fieldName: "fieldName"))
    }
}
