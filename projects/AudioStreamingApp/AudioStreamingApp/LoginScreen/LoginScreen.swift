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
//ObservableObject protocol, use @Published
//@StateObject -> like @State but for ref. types (inst. of classes)
//@ObservedObject
//@EnvironmentObject
//@Environment

//iOS 17
//@Observable -> @State

struct LoginScreen: View {
    @State var viewModel: LoginScreenViewModel
    
    init(username: String = "", password: String = "", showLogin: Bool = true) {
        self.viewModel =  LoginScreenViewModel(username: username, password: password, showLogin: showLogin)
    }
    
    var body: some View {
        let _ = print("render...")
        VStack(alignment: .leading) {
            if viewModel.showLogin {
                Text("Missing login")
            LabeledFieldView(title: "Username:", hint: "username", value: $viewModel.username)
                LabeledFieldView(title: "Password:", hint: "password", value: $viewModel.password)
            }
            Button {
//                viewModel.clearFields()
                viewModel.toggle()
            } label: {
                Image(systemName: "xmark.circle")
            }
            if viewModel.isAdmin {
                Image(systemName: "person.badge.key")
            }
            
            HStack {
//                CustomPanelView()
            }
            Spacer()
            Button {
                viewModel.loginAction()
            } label: {
                Text("Login")
            }
        }
//        .environmentObject(viewModel)
    }
}

#Preview {
    LoginScreen()
}


struct LoginScreenWithState: View {
    @State var username: String
    @State var password: String
    @State var showLogin: Bool
    
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
            if showLogin {
                LabeledFieldView(title: "Username:", hint: "username", value: $username)
                LabeledFieldView(title: "Password:", hint: "password", value: $password)
            }
            Button {
                showLogin.toggle()
                print("Toggle showLogin = \(showLogin)")
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
