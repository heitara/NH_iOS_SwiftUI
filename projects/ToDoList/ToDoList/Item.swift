//
//  Item.swift
//  ToDoList
//
//  Created by Emil Atanasov on 02/27/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
