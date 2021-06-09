//
//  Draft.swift
//  TodoApp
//
//  Created by 岡崎流依 on 2021/06/09.
//

import SwiftUI

struct Draft: View {
    @State var taskTitle = ""
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        TextField("タスクを入力してください。", text: $taskTitle, onCommit: {
            self.createTask()
//            print("success!")
        })
    }
    
    func createTask() {
        let newTask = UserTask(task: self.taskTitle, isCheck: false)
        self.userData.tasks.insert(newTask, at: 0)
//        self.userData.tasks.append(newTask)
        self.taskTitle = ""
        self.userData.isEditing = false
    }
}

struct Draft_Previews: PreviewProvider {
    static var previews: some View {
        Draft()
//            .environmentObject(UserData())

    }
}
