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
        .environment(viewModel)
    }
}

#Preview {
    HomeView(viewModel: LoginScreenViewModel(username: "Peter", password: "", showLogin: false))
}
