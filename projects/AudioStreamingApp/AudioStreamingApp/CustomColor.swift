//
//  CustomColor.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/13/25.
//

import SwiftUI
let gradient = LinearGradient(colors: [.pink, .cyan], startPoint: .top, endPoint: .bottomLeading)

struct GreenStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.green)
            .frame(height: 100)
    }
}

extension View {
    func fixedSizeAndGreenColor() -> some View {
        modifier(GreenStyle())
    }
}

// view modifier for Shape
extension Shape {
    func fixedSizeAndGreenColor() -> some View {
        self
            .fill(Color.green)
            .frame(height: 100)
    }
}
