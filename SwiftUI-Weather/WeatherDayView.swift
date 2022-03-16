//
//  WeatherDayView.swift
//  SwiftUI-Weather
//
//  Created by Hafiz Fahad Hassan on 14/03/2022.
//

import SwiftUI

struct WeatherDayView: View {
    var dayOffWeek: String
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack {
            Text(dayOffWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 25.0, weight: .bold))
                .foregroundColor(.white)
        }
    }
}
