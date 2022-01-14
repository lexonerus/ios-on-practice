//
//  UserData.swift
//  MVVM_simple
//
//  Created by Alex Krzywicki on 13.01.2022.
//

import Foundation


struct UserData {
    var name: String?
    var city: String?
    var email: String?
    var phone: String?
}

extension UserData {
    static var userData = UserData(name: "Alexey", city: "Moscow", email: "test@mail.com", phone: "+7(999)432-33-42")
}
