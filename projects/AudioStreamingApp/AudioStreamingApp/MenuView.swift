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
            ScrollView {
                LazyVStack {
                    ForEach(Array(movies.enumerated()), id: \.element) { index, item in
                        VStack {
                            HStack {
                                Text("\(index + 1). 🎬")
                                Text(item.title)
                                
                            }
                            Button {
                                
                            } label: {
                                Text("Watch it now \(Image(systemName: "popcorn"))!")
                            }
                        }
                    }
                }
            }
            Button("Read file!") {
//                let items = readJSON()
                // todo
            }
        }
    }
}

#Preview {
    MenuView()
}
