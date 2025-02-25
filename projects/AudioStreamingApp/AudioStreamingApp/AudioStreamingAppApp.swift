//
//  AudioStreamingAppApp.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/04/25.
//

import SwiftUI
import DebugSwift

@main
struct AudioStreamingAppApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    var viewModel = LoginScreenViewModel(username: "Peter", password: "", showLogin: false)
    var body: some Scene {
        WindowGroup {
//            ContentView()
//            ContainersView()
//            MenuView()
//            LoginScreen()
            HomeView(viewModel: viewModel)
            
//            LoginScreenWithState() // when using state, no extra rendering
        }
    }
}
