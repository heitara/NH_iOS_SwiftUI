//
//  ContentView.swift
//  MyFirstIOSApp
//
//  Created by Emil Atanasov on 01/14/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .foregroundColor(.green)
                .imageScale(.large)
            Text("Hello Swift!")
                .font(.title3)
                .fontWeight(.heavy)
                .foregroundColor(Color.green)
            Button {
                print("Action!")
            } label: {
                Text("Action")
                .foregroundColor(.green)
                .font(.title3)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
