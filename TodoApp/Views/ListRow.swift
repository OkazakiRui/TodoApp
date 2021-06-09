//
//  ListRow.swift
//  TodoApp
//
//  Created by 岡崎流依 on 2021/06/09.
//

import SwiftUI

struct ListRow: View {
    let task:Task
    var body: some View {
        HStack {
            Text(task.isEnd ? "✓" : "□")
            Text(task.name)
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(task: .mock1)
    }
}
