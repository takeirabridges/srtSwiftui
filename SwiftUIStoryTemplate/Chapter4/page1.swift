import SwiftUI

struct page1: View {
    var body: some View {

ZStack {
    Image("poster")
        .resizable()
        .scaledToFill()
        .edgesIgnoringSafeArea(.all)
    ScrollView{
        VStack {
            Text("Four years ago, at the peak\n of street racing in Detroit, the Detroit Police Department took a bold and innovative step to combat crime and elevate the city’s appeal. This initiative gave birth to the legendary “Spooky Speedsters of Detroit,” a fully legal street racing club that held adrenaline-pumping races through the streets of Detroit after the sun had set. It quickly became a renowned event, drawing hundreds of thousands of spectators and participants from all corners of the city.")
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 350)
            Spacer()
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 650)
        }
    }

}
    
}
}
