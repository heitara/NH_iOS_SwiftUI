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
        Grid {
            GridRow {
                Circle()
                    .fill(gradient)
                    .frame(height: 100)
                Circle()
                    .fill(gradient)
                    .frame(height: 100)
            }
            GridRow {
                Rectangle()
                    .fill(gradient)
                    .frame(height: 100)
                Rectangle()
                    .fill(gradient)
                    .frame(height: 100)
            }
        }
        .fixedSizeAndGreenColor()
    }
}

#Preview {
    MenuView()
}
