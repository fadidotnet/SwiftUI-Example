//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Hafiz Fahad Hassan on 09/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(.top, 10.0)
                VStack(spacing: 8) {
                    Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170, height: 170)
                    Text("76°")
                        .font(.system(size: 70.0, weight: .bold))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40.0)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOffWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                    
                    WeatherDayView(dayOffWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 88)
                    
                    WeatherDayView(dayOffWeek: "THU",
                                   imageName: "wind.snow",
                                   temperature: 55)
                    
                    WeatherDayView(dayOffWeek: "FRI",
                                   imageName: "sunset.fill",
                                   temperature: 60)
                    
                    WeatherDayView(dayOffWeek: "SAT",
                                   imageName: "snow",
                                   temperature: 25)
                }
                Spacer()
                
                Button {
                    self.isNight.toggle()
                } label: {
                    Text(isNight ? "Change to Light" : "Change to Dark")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 20.0, weight: .bold))
                        .cornerRadius(10.0)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
