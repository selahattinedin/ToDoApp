//
//  ToDoListViewViewModel.swift
//  toDoList
//
//  Created by Selahattin EDİN on 24.07.2023.
//

import Foundation
import Firebase

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String

    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id:String){
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId )
            .collection("todos")
            .document(id)
            .delete()
    }
}
