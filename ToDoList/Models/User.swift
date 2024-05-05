//
//  User.swift
//  ToDoList
//
//  Created by João Victor on 27/04/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
