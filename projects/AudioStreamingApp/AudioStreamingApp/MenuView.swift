//
//  MenuView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/13/25.
//

import SwiftUI

struct CustomStack: Layout {
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        CGSize(width: 300, height: 100)
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        var x = 0.0
        for subview in subviews {
            subview.place(at: bounds.origin.applying(CGAffineTransform(translationX: x, y: 0)), proposal: proposal)
            x += 120.0
        }
    }
    
    
}

struct MenuView: View {
    var movies: [Movie] = readJSON()
    let gradient = LinearGradient(colors: [.pink, .cyan], startPoint: .top, endPoint: .bottomLeading)
    var body: some View {
        CustomStack {
            Circle()
                .fillAndHeight(gradient: gradient)
            Circle()
                .fillAndHeight(gradient: gradient)
            Circle()
                .fillAndHeight(gradient: gradient)
        }
    }
}

#Preview {
    MenuView()
}
