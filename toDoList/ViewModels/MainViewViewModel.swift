//
//  MainViewViewModel.swift
//  toDoList
//
//  Created by Selahattin EDİN on 24.07.2023.
//

import Foundation
import Firebase

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
     private var handler: AuthStateDidChangeListenerHandle?
    
    init()  {
        self.handler = Auth.auth().addStateDidChangeListener {[weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
        
    }
}
