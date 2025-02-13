//
//  ContainersView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/13/25.
//

import SwiftUI

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
                Spacer()
//                    .frame(maxWidth: .infinity)
            }
            .frame(width: 300)
            .foregroundStyle(.green)
            .background(Color.pink)
            ZStack(alignment: .bottomTrailing) {
                Text("ZFirst item")
                Text("ZSecond item")
                Text("ZThird item")
            }
            .frame(width: 100, height: 500)
            .foregroundStyle(.red)
            .background(Color.cyan)
        }
        
    }
}

#Preview {
    ContainersView()
}
