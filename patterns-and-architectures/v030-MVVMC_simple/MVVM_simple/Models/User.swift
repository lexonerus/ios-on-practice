//
//  User.swift
//  MVVM_simple
//
//  Created by Alex Krzywicki on 23.12.2021.
//

import Foundation

struct User {
    let login: String?
    let passwords: String?
}

extension User {
    static var logins = [
        User(login: "lexone", passwords: "12345")
    ]
}
