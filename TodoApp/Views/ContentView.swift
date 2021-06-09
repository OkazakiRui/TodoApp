//
//  ContentView.swift
//  TodoApp
//
//  Created by 岡崎流依 on 2021/06/09.
//

import SwiftUI

struct ContentView: View {
    @State var tasks:[Task] = []
    
    var body: some View {
        NavigationView {
            List {
                ForEach(tasks) { task in
                    ListRow(task: task)
                }
                Text("+")
            }
//            .navigationTitle("TodoList")
            .navigationBarTitle(Text("Tasks"))
            .navigationBarItems(trailing: Text("Deleat"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tasks: [.mock1,.mock2])
    }
}
