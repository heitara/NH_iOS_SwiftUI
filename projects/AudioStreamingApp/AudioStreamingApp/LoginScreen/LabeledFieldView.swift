//
//  LabeledFieldView.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/18/25.
//

import SwiftUI

struct LabeledFieldView: View {
    let title: String
    let hint: String
    @Binding var value: String
//    private var _value: Binding<String>
//    var value: String {
//        get {
//            _value.wrappedValue
//        }
//        set {
//            _value.wrappedValue = newValue
//        }
//    }
    
    init(title: String, hint: String, value: Binding<String>) {
        self.title = title
        self.hint = hint
        self._value = value
    }
    
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
