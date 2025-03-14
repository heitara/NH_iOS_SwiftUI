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


func readAFile() throws {
    // do something
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

import SFSymbolKit

struct LoginScreen: View {
    @State var viewModel: LoginScreenViewModel
    @State var url: URL
    @State var showWebView: Bool
    var list = ["Swift", "is", "cool", "!"]
    
    init(username: String = "", password: String = "", showLogin: Bool = true) {
        self.viewModel =  LoginScreenViewModel(username: username, password: password, showLogin: showLogin)
        self.url = URL(string: "https://google.com/")!
        self.showWebView = true
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
//                url = URL(string: "https://www.newhorizons.bg/")!
                showWebView.toggle()
                
            } label: {
                Image(systemName: "xmark.circle")
            }
            if viewModel.isAdmin {
                Image(systemName: "person.badge.key")
            }
            
            HStack {
                CustomPanelView()
            }
            if showWebView {
                WebView(url: url)
            }
            Spacer()
            HStack {
                Button {
                    viewModel.loginAction()
                    do {
                        try readAFile()
                    } catch {
                        print("Error:", error)
                    }
                } label: {
                    Text("Login")
                }
                Spacer()
                Button {
                    Task {
                        await viewModel.loadData()
                    }
                } label: {
                    Text("Load!")
                }
            }
        }
        .environment(viewModel)
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
