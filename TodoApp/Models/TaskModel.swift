//
//  TaskModel.swift
//  TodoApp
//
//  Created by 岡崎流依 on 2021/06/09.
//

import Foundation

struct Task:Identifiable {
    var id = UUID()
    let name:String
    let isEnd:Bool
}
