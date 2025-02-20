//
//  HomeView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/20/25.
//

import SwiftUI

struct HomeView: View {
    @State var viewModel: LoginScreenViewModel
    
    var body: some View {
        TabView {
            Tab("Login", systemImage: "tray.and.arrow.down.fill") {
                LoginScreen()
            }
            .badge(2)


            Tab("Sent", systemImage: "tray.and.arrow.up.fill") {
                EmptyView()
            }


            Tab("Profile", systemImage: "person.crop.circle.fill") {
                NavigationStack {
                    List {
                        NavigationLink {
                            ProfileView()
                                .toolbarTitleDisplayMode(.inline)
                                .navigationTitle("Details")
                        } label: {
                            Text("Profile")
                        }
                    }
                    .navigationTitle("Hello \(viewModel.username)!")
                }
            }
            .badge("!")
        }
        
        .environment(viewModel)
    }
}

#Preview {
    HomeView(viewModel: LoginScreenViewModel(username: "Peter", password: "", showLogin: false))
}
