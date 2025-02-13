//
//  MyCustomView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/11/25.
//

import SwiftUI

struct MyCustomView: View {
    var body: some View {
        Image(systemName: "globe")
        Image(systemName: "highlighter")
            .resizable()
            .frame(height: 100)
            .frame(width: 200)
            .foregroundStyle(.primary2)
        Image(.swiftOg)
            .resizable()
            .frame(height: 100)
            .frame(width: 200)
            .clipShape(.rect(cornerSize: CGSize(width: 30, height: 30)))
            
//        Image("appdesigncycle2")
//        Button("Hello") {
//            print("hi")
//        }
//        Button {
//            print("hi")
//        } label: {
//            HStack {
//                Image(systemName: "globe")
//                Text("Hello")
//                    .font(.title)
//            }
//        }

    }
}

#Preview {
    MyCustomView()
}

//#Preview(traits:(), body: <#T##() -> UIView#>)
