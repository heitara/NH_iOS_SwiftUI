//
//  MenuView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/13/25.
//

import SwiftUI

struct MenuView: View {
    var movies: [Movie] = readJSON()
    let gradient = LinearGradient(colors: [.pink, .cyan], startPoint: .top, endPoint: .bottomLeading)
    var body: some View {
        VStack {
            Circle()
                .fillAndHeight(gradient: gradient)
            GeometryReader { geometry in
                Text("Size: \(geometry.size)")
                Button("Hello") {
                    
                }
                .offset(CGSize(width: geometry.size.width / 2, height: geometry.size.height / 2))
            }
            Circle()
                .fillAndHeight(gradient: gradient)
        }
    }
}

#Preview {
    MenuView()
}
