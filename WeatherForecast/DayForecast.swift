//
//  DayForecast.swift
//  WeatherForecast
//
//  Created by Nicolas Bracigliano on 5/4/2024.
//

import SwiftUI

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        return isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColor: Color {
        return isRainy ? Color.blue : Color.yellow
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
                .fontWeight(.black)
                .padding(.bottom, 5)
            
            Image(systemName: iconName)
                .foregroundColor(iconColor)
                .font(.largeTitle)
            
            Text("High: \(high)")
                .fontWeight(.semibold)
            
            Text("Low: \(low)")
                .fontWeight(.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}

#Preview {
    DayForecast(day: "Mon", isRainy: true, high: 20, low: 12)
}
