//
//  FeatureCard.swift
//  WeatherForecast
//
//  Created by Nicolas Bracigliano on 5/4/2024.
//

import SwiftUI

struct FeatureCard: View {
    let iconName: String
    let description: String
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .font(.largeTitle)
                .frame(width: 50)
                .padding(.trailing, 5)
            
            Text(description)
                .font(.footnote)
            
            Spacer()
        }
        .padding()
        .background{
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.tint)
                .opacity(0.3)
                .brightness(-0.4)
        }
        .foregroundColor(.white)
    }
}

#Preview {
    FeatureCard(iconName: "person.2.crop.square.stack.fill", description: "A multiline description about the crazy awesome features that this app will bring to your life.")
}
