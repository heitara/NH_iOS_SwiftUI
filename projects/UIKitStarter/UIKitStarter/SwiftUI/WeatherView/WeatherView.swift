//
//  WeatherView.swift
//  UIKitStarter
//
//  Created by Emil Atanasov on 02/27/25.
//

import SwiftUI

struct WeatherView: View {
    var temperature: Double
    var condition: String
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(Int(temperature))°C")
                .font(.system(size: 72, weight: .bold))
            
            Text(condition)
                .font(.title)
                .foregroundColor(.secondary)
            
            Image(systemName: getWeatherSymbol(for: condition))
                .font(.system(size: 80))
                .symbolRenderingMode(.multicolor)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(UIColor.systemBackground))
                .shadow(color: .gray.opacity(0.3), radius: 10)
        )
    }
    
    private func getWeatherSymbol(for condition: String) -> String {
        switch condition.lowercased() {
        case "sunny": return "sun.max.fill"
        case "cloudy": return "cloud"
        case "rainy": return "cloud.drizzle"
        default: return "cloud"
        }
    }
}

#Preview {
    WeatherView(temperature: 23, condition: "cloudy")
}
