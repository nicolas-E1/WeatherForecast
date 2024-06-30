//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Nicolas Bracigliano on 5/4/2024.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom,
]

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
            DayForecast(day: "Fri", isRainy: false, high: 20, low: 13)
        }
        .background(Gradient(colors: gradientColors))
        .tabViewStyle(.page)
        .foregroundColor(.white)
    }
}

#Preview {
    ContentView()
}
