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
    
    func loadData() async {
        do {
            guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1") else {
                print("Invalid address!")
                return
            }
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            
            let (data, response) = try await URLSession.shared.data(for: request)
            
            let responseAsString = String(data: data, encoding: .utf8) ?? "Unable to decode!"
            print("raw: ", responseAsString)
            
            let decoder = JSONDecoder()
            
            let item = try decoder.decode(Todo.self, from: data)
            print("Item: ", item)
            
        
        } catch {
            print(error)
        }
    }
}

struct Todo {
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
}

extension Todo: Codable {
    
}
