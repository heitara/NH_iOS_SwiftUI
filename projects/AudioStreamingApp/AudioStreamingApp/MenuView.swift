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
                    ForEach(movies, id: \.title) { item in
                        VStack {
                            HStack {
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
