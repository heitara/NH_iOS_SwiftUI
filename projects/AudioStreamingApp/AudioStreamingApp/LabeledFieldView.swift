//
//  LabeledFieldView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/18/25.
//

import SwiftUI

struct LabeledFieldView: View {
    let title: String
    var hint: String = ""
    @Binding var value: String
    var body: some View {
        HStack {
            Text(title)
            TextField(hint, text: $value)
        }
    }
}

#Preview {
    LabeledFieldView(title: "Username:", hint: "username", value: .constant("constant value"))
}
