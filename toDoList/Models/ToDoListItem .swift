//
//  ToDoListItem .swift
//  toDoList
//
//  Created by Selahattin EDİN on 24.07.2023.
//

import Foundation
struct ToDoListItem: Codable, Identifiable{
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool){
        isDone = state
    }
}
