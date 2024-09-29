//
//  User.swift
//  To Do List
//
//  Created by Christopher Bernard on 8/29/24.
//

import Foundation
struct User: Codable{
    let id:String
    let name: String
    let email: String
    let joined: TimeInterval
}
