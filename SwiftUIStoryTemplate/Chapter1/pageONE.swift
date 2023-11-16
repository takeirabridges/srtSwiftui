//
//  pageONE.swift
//  SwiftUIStoryTemplate
//
//  Created by Takeira Bridges on 11/16/23.
//

import SwiftUI

struct pageONE: View {
    
    @State private var isCarOnFire = false
    //
    
    var body: some View {
        ZStack {
            Image("nightsky")
                .resizable()
                .ignoresSafeArea()
            
            ZStack {
                ScrollView {
                    Spacer()
                    VStack{
                        Text("Chapter One")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        Text("The Fire")
                            .foregroundColor(.white)
                            .font(.headline)
                        Text("Once upon a time, deep in the trenches of Detroit, there was a haunted yet beautiful car named Analine. For months it operated as a normal vehicle, but on Halloween night every year the evil that had been festering for months had the chance to be recognized. Until one night, a fire broke out next door, causing the paint on Analine to melt. Because of that Analine's one of a kind exterior had been burned and bruised with soot. The blistering heat from the fire allowed the true evil and wickedness that lied within the car, unbeknownst to Analine and it's owner, to awaken 5 days early. Though Analine was not aesthetically pleasing to look at, it still maintained all its functionallity and more.")
                            .lineSpacing(5.5)
                            .foregroundColor(.white)
                            .padding()
                        
                        
                    }
                    
                    
                }
                ZStack{
                        Button {isCarOnFire.toggle()
                        } label: {
                            Image("redcar")
                                .resizable()
                                .scaledToFit()
                                .padding()
                        } .offset(x:0, y:270)
                    
                        if isCarOnFire {
                            VStack{
                                Spacer()
                                Image ("fire")
                                    .resizable()
                                    .scaledToFit()
                            }
                            .ignoresSafeArea()
                        }
                        
                    }
                }
            }
        }
    }

struct pageOne_Previews: PreviewProvider {
    static var previews: some View {
        pageONE()
    }
}

