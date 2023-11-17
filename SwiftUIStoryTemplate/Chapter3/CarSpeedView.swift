//
//  CarView.swift
//  SwiftUIStoryTemplate
//
//  Created by Baye Hanne on 11/15/23.
//

import Foundation
import SwiftUI
struct CarSpeedView: View {
    @State private var currentSpeed = 0
    @State private var offset2 = 400.0
    
    private var animation: Animation {
        .easeIn
        .speed(0.2)
        .repeatForever(autoreverses: false)
    }
    
        
        var body: some View {
            VStack {
                Text("MPH: ")
                Text("\(currentSpeed)")
                    .font(.largeTitle)
                
                Image("srtsketch")
                    .resizable()
                    .scaledToFit()
                    .offset(x: offset2)
                    .font(.largeTitle)
                    .onTapGesture {
                        currentSpeed = currentSpeed + 60
                    }
                
                    .onAppear {
                        withAnimation(animation) {
                            offset2 -= 500.0
                            
                        }
                    }
            }
        }
    }

#Preview {
    CarSpeedView()
}
