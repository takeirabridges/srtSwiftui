//
//  pageTWO.swift
//  SwiftUIStoryTemplate
//
//  Created by Takeira Bridges on 11/16/23.
//

import SwiftUI


struct pageTWO: View {
    
@State private var offset2 = 400.0
@State private var offset3 = -300.0

private var animation: Animation {
    .easeIn
    .speed(0.08)
    .repeatForever(autoreverses: true)
}

var body: some View {
    
ZStack {
        Image("nightsky")
            .resizable()
            .ignoresSafeArea()
ZStack {
ScrollView {
    Spacer()
    VStack{
Text("After witnessing the atrocity, the owner screamed I need to get my blue Dodge SRT out of this neighborhood! Catching a glimpse of its reflection Analine felt worthless, useless, and bare which meant horror and harm was soon to follow. Analine's rampage and wreckless driving caused residents to flooded the precinct phone lines with reports of what they believed was a drunk driver in a half burned car driving wrecklessly. For days Analine terrorized everything and everyone in it's path.")
    .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
    .foregroundColor(.white)
    .padding()

ZStack{
      Spacer()
    Image("street")
    .resizable()
    .scaledToFit()
    .foregroundColor(.white)
                                
    Image("smallredcar")
    .resizable()
    .scaledToFit()
    .offset(x: offset2)
    .rotationEffect(.degrees(32))
    .frame(width: 225, height: 130)
    .offset(x:65, y:5)
                                
    Image("smallredcar")
    .resizable()
    .scaledToFit()
    .offset(x: offset3)
    .rotationEffect(.degrees(-32))
    .frame(width: 150, height: 130)
    .offset(x:-125, y:-140)
}
        }
    }
}
    .onAppear {
    withAnimation(animation) {
    offset2 -= 500.0
        offset3 += 275
}
            }
        }
    }
}
#Preview {
    pageTWO()
}
