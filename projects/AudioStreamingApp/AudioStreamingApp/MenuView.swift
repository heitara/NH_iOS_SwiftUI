//
//  MenuView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/13/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(0..<500) { item in
                    Circle()
                        .fill(LinearGradient(colors: [.pink, .cyan], startPoint: .top, endPoint: .bottomLeading))
                        .frame(height: 100)
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
