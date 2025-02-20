//
//  LoginScreen.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/18/25.
//

import SwiftUI

class MyState: ObservableObject {
    @Published var i = 100
}


class MyState2 {
     var i = 100
}


//@State -> structures, enums (value types)
//@Binding -> to give write permission to (sub)*-view
//----------
//@StateObject -> ref. types
//ObservableObject protocol
//@ObservedObject
//@EnvironmentObject
//@Environment

//iOS 17
//@Observable

struct LoginScreen: View {
    @State var username: String
    @State var password: String
    @State var showLogin: Bool
    
//    @StateObject var internalState = MyState()
    
    init(username: String = "", password: String = "", showLogin: Bool = true) {
        self.username = username
        self.password = password 
        self.showLogin = showLogin
    }
    
    var isAdmin: Bool {
        username == "admin"
    }
    
    var body: some View {
        let _ = print("render...")
        VStack(alignment: .leading) {
//            HStack {
//                Text("Username:")
//                TextField("username", text: $username)
//            }
            if showLogin {
                LabeledFieldView(title: "Username:", hint: "username", value: $username)
                LabeledFieldView(title: "Password:", hint: "password", value: $password)
            }
            Button {
//                clearFields()
                showLogin.toggle()
            } label: {
                Image(systemName: "xmark.circle")
            }
            if isAdmin {
                Image(systemName: "person.badge.key")
            }
            
            Spacer()
            Button {
                loginAction()
            } label: {
                Text("Login")
            }
        }
    }
    
    func loginAction() {
        print("username = \(username)")
        print("password = \(password)")
    }
    
    func clearFields() {
        username = ""
        password = ""
    }
}

#Preview {
    LoginScreen()
}
