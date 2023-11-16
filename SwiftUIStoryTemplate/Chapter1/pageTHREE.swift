//
//  pageTHREE.swift
//  SwiftUIStoryTemplate
//
//  Created by Takeira Bridges on 11/16/23.
//

import SwiftUI
//

struct pageTHREE: View {
    
    @State private var printTwoShowing = false
    @State private var printThreeShowing = false
    @State private var printfourShowing = false
    
    var body: some View {
        ZStack {
            Image("nightsky")
                .resizable()
                .ignoresSafeArea()
            
            Text("With 5 days left before returning back to normal Analine's main goal was to invoke fear in those who displayed it least. The burned, dilapitated car would slowly trail behind those who chose to roam the streets at night. After capturing what seemed to be endless victims, a teenage boy was captured, then a cold chill ran through the boys body after reading greeting cards that the car had printed for previous victims. They read the following....Welcome to Paradise! You are in for a ride! You can expect Pain on this journey. So sit back, relax, and see what your future awaits.")
                .lineSpacing(20)
                .foregroundColor(.white)
                .padding()
            
            ZStack{
                VStack{
                       
                        }
                    }
                }
            }
    }
#Preview {
    pageTHREE()
}
