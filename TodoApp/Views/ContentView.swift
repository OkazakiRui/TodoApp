//
//  ContentView.swift
//  TodoApp
//
//  Created by 岡崎流依 on 2021/06/09.
//

import SwiftUI

struct ContentView: View {
//    @ObservedObject var userData = UserData()
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tasks) { task in
                    Button(action: {
                        guard let index = self.userData.tasks.firstIndex(of: task) else {
                            return
                        }
                        
                        self.userData.tasks[index].isCheck.toggle()
                    }){
                        ListRow(task: task.task, isCheck: task.isCheck)
                    }
                }
                
                if self.userData.isEditing {
                    Draft()
                } else {
                    Button(action: {
                        self.userData.isEditing = true
                    }, label: {
                        Image(systemName: "plus.circle")
                    })
                }
                
            }
            //            .navigationTitle("TodoList")
            .navigationBarTitle(Text("Tasks"))
            .navigationBarItems(trailing: Button(action: {
                deleteTask()
            }, label: {
                Text("delete")
            }))
        }
    }
    
    func deleteTask(){
        let necessaryTask = self.userData.tasks.filter({!$0.isCheck})
//        isCheck が false のものだけ配列に格納
        self.userData.tasks = necessaryTask
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
