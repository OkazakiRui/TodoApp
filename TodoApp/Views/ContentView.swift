//
//  ContentView.swift
//  TodoApp
//
//  Created by 岡崎流依 on 2021/06/09.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tasks) { task in
                    Button(action: {
                        let index = self.userData.tasks.firstIndex(of: task)
                        self.userData.tasks[index!].isCheck.toggle()
                    }){
                        ListRow(task: task.task, isCheck: task.isCheck)
                    }
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
        ContentView()
    }
}
