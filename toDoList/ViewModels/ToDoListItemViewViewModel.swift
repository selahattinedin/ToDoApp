//
//  ToDoListItemViewViewModel.swift
//  toDoList
//
//  Created by Selahattin EDİN on 25.07.2023.
//

import Foundation
import Firebase

class ToDoListItemViewViewModel: ObservableObject {
    init() {
    }
        
        func toggleIsDone(item: ToDoListItem){
            var itemCopy = item
            itemCopy.setDone(!item.isDone)
            
            guard let uid = Auth.auth().currentUser?.uid
            else{
                return
            }
            
            let db = Firestore.firestore()
            db.collection("users")
                .document(uid)
                .collection("todos")
                .document(itemCopy.id)
                .setData(itemCopy.asDictionary())
            
                
        
        }
    
}
