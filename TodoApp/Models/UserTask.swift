//
//  UserTask.swift
//  TodoApp
//
//  Created by 岡崎流依 on 2021/06/09.
//

import Foundation

struct UserTask:Identifiable, Equatable {
    let id = UUID()
    let task:String
    var isCheck:Bool
    
}
