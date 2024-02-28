//
//  Extensions.swift
//  toDoList
//
//  Created by Selahattin EDİN on 26.07.2023.
//

import Foundation

extension Encodable {
    func asDictionary() -> [String: Any]{
        guard let data = try? JSONEncoder().encode(self)
        else{
            return [:]
        }
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String:Any]
            return json ?? [:]
        } catch {
            return[:]
        }
    }
}
