//
//  User.swift
//  toDoList
//
//  Created by Selahattin EDİN on 24.07.2023.
//

import Foundation
struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
