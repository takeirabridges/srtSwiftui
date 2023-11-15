//
//  CarView.swift
//  SwiftUIStoryTemplate
//
//  Created by Baye Hanne on 11/15/23.
//

import Foundation
import SwiftUI
struct CarSpeedView: View {
    @State private var currentSpeed = 10
    
    var body: some View {
        VStack {
            Text("The car speed is: ")
            Text("\(currentSpeed)")
                .font(.largeTitle)
            
            Image("srtsketch")
         .resizable()
         .scaledToFit()
                .font(.largeTitle)
                .onTapGesture {
                    currentSpeed = currentSpeed + 10
                }
        }
    }
}
#Preview {
    CarSpeedView()
}
