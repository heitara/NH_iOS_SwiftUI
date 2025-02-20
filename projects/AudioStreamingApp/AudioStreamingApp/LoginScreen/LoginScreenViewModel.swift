//
//  LoginScreenViewModel.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/20/25.
//

import SwiftUI

@Observable
class LoginScreenViewModel {
    var username: String
    var password: String
    var showLogin: Bool
    
    init(username: String, password: String, showLogin: Bool) {
        self.username = username
        self.password = password
        self.showLogin = showLogin
    }
    
    func clearFields() {
        password = ""
        username = ""
    }
    
    func toggle() {
        showLogin.toggle()
        print("[VM] Toggle showLogin = \(showLogin)")
    }
    var isAdmin: Bool {
        username == "admin"
    }
    
    func loginAction() {
        print("username = \(username)")
        print("password = \(password)")
    }
}
