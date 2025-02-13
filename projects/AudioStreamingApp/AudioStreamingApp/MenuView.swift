//
//  MenuView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/13/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView {
            LazyVStack{
                ForEach(0..<500000) { item in
                    HStack {
                        VStack {
                            Text("Item \(item + 1)")
                            Text("Subtitle")
                                .font(.system(size: 12))
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.gray)
                    }
                    .padding()
                    Divider()
                }
                
            }
        }
    }
}

#Preview {
    MenuView()
}
