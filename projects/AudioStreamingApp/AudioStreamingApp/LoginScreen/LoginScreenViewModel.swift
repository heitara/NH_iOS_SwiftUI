//
//  LoginScreenViewModel.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/20/25.
//

import Combine

class LoginScreenViewModel: ObservableObject {
    @Published var username: String
    @Published var password: String
    @Published var showLogin: Bool
    
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
    }
    var isAdmin: Bool {
        username == "admin"
    }
    
    func loginAction() {
        print("username = \(username)")
        print("password = \(password)")
    }
}
