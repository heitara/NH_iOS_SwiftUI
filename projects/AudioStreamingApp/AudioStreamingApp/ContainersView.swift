//
//  ContainersView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/13/25.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}

struct ContainersView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack(spacing: 0) {
                Image(systemName: "star")
                    .resizable()
                    .foregroundColor(Color.orange)
                    .frame(width: 100, height: 100)
                Text("First item")
                Image(systemName: "star")
                    .foregroundColor(Color.orange)
                    .frame(width: 100, height: 100)
                Text("Second item")
                Image(systemName: "star")
                    .foregroundColor(Color.orange)
                    .frame(width: 100, height: 100)
                Text("Third item")
                Image(systemName: "star")
                    .resizable()
                    .foregroundColor(Color.orange)
                    .frame(width: 50, height: 50)
            }
            VStack(alignment: .leading, spacing: 0) {
                Spacer()
                    .frame(height: 50)
                Text("First item")
                Text("Second item")
                Spacer()
                Text("Third item")
                Circle()
                    .fill(Color.blue)
                RoundedRectangle(cornerSize: CGSizeMake(5, 5))
                    .stroke(style: .init(lineWidth:10, lineCap: .round, lineJoin: .round, miterLimit: 0, dash: [1.0, 0.5, 1.0], dashPhase: 2.0))
                    .fill(Color.blue)
                Spacer()
                Triangle()
                    .fill(Color.purple)
//                    .frame(width: 100, height: 100)
//                    .frame(maxWidth: .infinity)
            }
            .frame(width: 300)
            .foregroundStyle(.green)
            .background(Color.pink)
            ZStack(alignment: .center) {
//                Color.cyan
                Rectangle()
                    .fill(LinearGradient(colors: [.blue, .green], startPoint: .top, endPoint: .bottomLeading))
                Text("ZCenter")
                Button("Hello!") {
                    print("Hello!")
                }
                .buttonStyle(.borderedProminent)
//                Text("ZSecond item")
//                Text("ZThird item")
            }
        }
        
    }
}

#Preview {
    ContainersView()
}
