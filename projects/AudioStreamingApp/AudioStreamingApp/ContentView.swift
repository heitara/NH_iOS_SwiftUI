//
//  ContentView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/04/25.
//

import SwiftUI

struct ContentView: View {
    var version = 1
    @State var isTextBold = false
    var body: some View {
        let _ = print("\(#function)")
        VStack {
            MainHeaderView()
                .foregroundStyle(Color.primary2)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hi Swift!\nHello SwiftUI!\nThis is new and exciting!")
                .font(.body)
                .bold(isTextBold)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding(.all)
                .background(Color.green)
                .lineSpacing(10.0)
                
            Button("Hello") {
                demo()
                isTextBold.toggle()
            }
            ColorPicker("Title", selection: .constant(.red))
            
        }
        .padding()
//        .foregroundStyle(Color.green)
    }
    
    func demo() {
        
        if version == 1 {
            print("Hello! You are using version 1.0")
        }
    }
}

#Preview("Demo") {
    ContentView()
}

#Preview("Demo Bold Text", traits: .landscapeLeft) {
    ContentView(version: 2, isTextBold: true)
}

