//
//  MapView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/25/25.
//

import SwiftUI

struct MapView: View {
    @State var viewModel: MapViewViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.title)
                .font(.title2)
            Text("Render a map!")
        }
    }
}

#Preview {
    MapView(viewModel: MapViewViewModel(title: "[TEST] Map title"))
}
