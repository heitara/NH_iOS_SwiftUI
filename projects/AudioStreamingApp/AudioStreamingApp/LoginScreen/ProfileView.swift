//
//  Profile.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/20/25.
//
import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var loginViewModel: LoginScreenViewModel
    var body: some View {
        HStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundStyle(Color.green)
            Text(loginViewModel.username)
                .font(.title2)
        }
    }
}

#Preview {
    ProfileView()
        .environmentObject(LoginScreenViewModel(username: "Admin", password: "", showLogin: false))
}
