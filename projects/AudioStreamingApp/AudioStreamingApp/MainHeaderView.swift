//
//  MainHeaderView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/06/25.
//

import SwiftUI

struct MainHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "staroflife.shield")
            Image(systemName: "star")
            Image(systemName: "star")
                .foregroundColor(Color.orange)
            Image(systemName: "star")
            Image(systemName: "staroflife.shield")
        }
    }
}

#Preview {
    MainHeaderView()
}
