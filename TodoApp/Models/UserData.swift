//
//  UserData.swift
//  TodoApp
//
//  Created by 岡崎流依 on 2021/06/09.
//

import Foundation

class UserData: ObservableObject {
    @Published var tasks = [
        UserTask(task: "散歩", isCheck: false),
        UserTask(task: "支払い", isCheck: false),
        UserTask(task: "課題", isCheck: false)
    ]
    
    @Published var isEditing: Bool = false
    
    
}
