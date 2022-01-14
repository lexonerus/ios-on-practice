//
//  ViewModel.swift
//  MVVM_simple
//
//  Created by Alex Krzywicki on 23.12.2021.
//

import Foundation
import UIKit.UIColor

class LoginViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    var isLoggedIn = false
    
    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].passwords {
            statusText.value = "Log in failed."
            statusColor.value = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
            isLoggedIn = false
        } else {
            statusText.value = "You successfully logged in."
            statusColor.value = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            isLoggedIn = true
        }
    }
}
