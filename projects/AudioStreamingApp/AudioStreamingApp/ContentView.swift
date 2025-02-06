//
//  ContentView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/04/25.
//

import SwiftUI

struct ContentView: View {
    var version = 1
    var body: some View {
        VStack {
            MainHeaderView()
                .foregroundStyle(Color.primary2)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hi Swift!")
                .font(.body)
                .fontWeight(.black)
                .multilineTextAlignment(.center)
            Button("Hello") {
                demo()
            }

        }
        .padding()
    }
    
    func demo() {
        
        if version == 1 {
            print("Hello! You are using version 1.0")
        }
    }
}

#Preview {
    ContentView()
}
