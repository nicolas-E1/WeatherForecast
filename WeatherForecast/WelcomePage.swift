//
//  WelcomePage.swift
//  WeatherForecast
//
//  Created by Nicolas Bracigliano on 5/4/2024.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "cloud.bolt.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 70))
                
            }
            
            Text("Welcome to the Forecast app")
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding(.top)
                .fontDesign(.rounded)
            
            Text("The most simple one")
                .font(.title2)
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .fontDesign(.rounded)
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}
