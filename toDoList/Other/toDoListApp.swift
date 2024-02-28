//
//  toDoListApp.swift
//  toDoList
//
//  Created by Selahattin EDİN on 24.07.2023.
//

import SwiftUI
import FirebaseCore

@main
struct toDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
