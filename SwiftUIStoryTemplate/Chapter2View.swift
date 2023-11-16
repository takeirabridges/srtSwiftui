import SwiftUI

struct Chapter2View: View {
    var body: some View {
        // Vstack -> Verticle
        // Hstack -> Horizontal
        // Zstack -> zIndex (back to front)
        ZStack{
            Image("joseph")
                .resizable()
                .scaledToFit()
            Text("But the car wasn't always a vessel for evil. Just a few years ago, the car was a normal srt with a beautiful azure color. Its owner was a man named Joesph. Joseph named the car Adaline. Joseph was a kind hearted man, who lived in the westide of Detroit. But two blocks down from Joseph's house lived a man named Meechie. Meechie was a hater, he was mad that his car wasn't as good as Joseph's so he hired three men to aquire the car from Joseph.  Three theives were named.")
               
                .font(.title)
                .foregroundStyle(.black)
                .padding()
                .background(
                    Rectangle()
                        .foregroundStyle(.gray)
                        .opacity(0.5)
                    
                )
            
        }
    }
}

#Preview {
    Chapter2View()
}
