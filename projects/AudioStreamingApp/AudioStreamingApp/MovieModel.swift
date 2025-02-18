//
//  MovieModel.swift
//  AudioStreamingApp
//
//  Created by Emil Atanasov on 02/18/25.
//

import Foundation
//
//{
//    "title": "The Godfather: Part II",
//    "rank": "3",
//    "id": "tt0071562"
//}

struct Movie {
    var title: String
    var rank: String
    var id: String
//    var id = UUID()
}

extension Movie: Codable {
    
}

extension Movie: Identifiable {
    
}

extension Movie: Hashable {
    
}


func readJSON() -> [Movie] {
    if let filepath = Bundle.main.path(forResource: "movies", ofType: "json") {
        do {
            let contents = try String(contentsOfFile: filepath)
//            print(contents)
            let decoder = JSONDecoder()
            if let data = contents.data(using: .utf8) {
                let items = try decoder.decode([Movie].self, from: data)
                return [Movie](items.prefix(10))
            }
        } catch {
            // contents could not be loaded
            print("Error: \(error)")
        }
    } else {
        // example.txt not found!
    }
    
    return []
}
