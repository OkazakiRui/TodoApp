//
//  ListRow.swift
//  TodoApp
//
//  Created by 岡崎流依 on 2021/06/09.
//

import SwiftUI

struct ListRow: View {
    let task:String
    var isCheck:Bool
    
    var body: some View {
        HStack {
            Text(isCheck ? "✓" : "□")
            Text(task)
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(task: "運動", isCheck: true)
    }
}
