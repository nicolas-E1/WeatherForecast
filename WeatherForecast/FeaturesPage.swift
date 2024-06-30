//
//  FeaturesPage.swift
//  WeatherForecast
//
//  Created by Nicolas Bracigliano on 5/4/2024.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Features")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top, 100)
            
            FeatureCard(iconName: "person.2.crop.square.stack.fill", description: "A multiline description about the crazy awesome features that this app will bring to your life.")
            
            FeatureCard(iconName: "quote.bubble.fill", description: "Inspirational quotes included")
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
