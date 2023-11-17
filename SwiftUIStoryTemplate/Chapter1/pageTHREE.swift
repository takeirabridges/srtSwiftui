//
//  pageTHREE.swift
//  SwiftUIStoryTemplate
//
//  Created by Takeira Bridges on 11/16/23.
//

import SwiftUI
//

struct pageTHREE: View {
    
    @State private var offset1 = -700.0
    
    private var animation: Animation {
        .easeIn
        .speed(0.05)
        .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        ZStack {
            Image("nightsky")
                .resizable()
                .ignoresSafeArea()
            
            Text("With 5 days left before returning back to normal Analine's main goal was to invoke fear in those who displayed it least. The burned, dilapitated car would slowly trail behind those who chose to roam the streets at night. After capturing what seemed to be endless victims, a teenage boy was captured, then a cold chill ran through the boys body after reading greeting cards that the car had printed for previous victims. They read the following....Welcome to Paradise! You are in for a ride! You can expect Pain on this journey. So sit back, relax, and see what your future awaits.")
                .lineSpacing(20)
                .foregroundColor(.white)
                .padding()
            
            VStack{
                    Rectangle()
                        .frame(width: 95, height: 125)
                        .foregroundColor(.red)
                        .offset(x:-80,y:0)
                        .rotationEffect(Angle(degrees: 30))
                    Rectangle()
                        .frame(width: 95, height: 125)
                        .foregroundColor(.red)
                        .offset(x:80,y:0)
                        .rotationEffect(Angle(degrees: -30))
                    Rectangle()
                        .frame(width: 95, height: 125)
                        .foregroundColor(.red)
                        .offset(x:-80,y:0)
                        .rotationEffect(Angle(degrees: 30))
                    Rectangle()
                        .frame(width: 95, height: 125)
                        .foregroundColor(.red)
                        .offset(x:80,y:0)
                        .rotationEffect(Angle(degrees: -30))
                    
                } .offset(y: offset1)
            } .onAppear {
                withAnimation(animation) {
                    offset1 += 1500
                }
                
            }
        }
    }
#Preview {
    pageTHREE()
}
