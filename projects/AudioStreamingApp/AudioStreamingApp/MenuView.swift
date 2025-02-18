//
//  MenuView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/13/25.
//

import SwiftUI

struct MenuView: View {
    let gradient = LinearGradient(colors: [.pink, .cyan], startPoint: .top, endPoint: .bottomLeading)
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [GridItem(), GridItem()]) {
                ForEach(1..<1000) { item in
                    ZStack {
                        Circle()
                            .fillAndHeight(gradient: gradient)
                        Text("Item: \(item)")
                            
                    }
//                    .background(item % 2 == 0 ? Color.blue : .green)
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
