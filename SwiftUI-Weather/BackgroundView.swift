//
//  BackgroundView.swift
//  SwiftUI-Weather
//
//  Created by Hafiz Fahad Hassan on 14/03/2022.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .purple : Color("lightBlue")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
