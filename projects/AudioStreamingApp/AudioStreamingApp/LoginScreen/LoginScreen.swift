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
    @ObservedObject var viewModel: LoginScreenViewModel
    init(username: String = "", password: String = "", showLogin: Bool = true) {
        self.viewModel = LoginScreenViewModel(username: username, password: password, showLogin: showLogin)
    }
    
    var body: some View {
        let _ = print("render...")
        VStack(alignment: .leading) {
            if viewModel.showLogin {
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
            
            Spacer()
            Button {
                viewModel.loginAction()
            } label: {
                Text("Login")
            }
        }
    }
}

#Preview {
    LoginScreen()
}
