//
//  LoginScreenViewModel.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/20/25.
//

import SwiftUI
import Alamofire

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
    
    func loadData() {
        AF.request("https://jsonplaceholder.typicode.com/todos/1").response { response in
            debugPrint(response)
        }
        
    }
}
