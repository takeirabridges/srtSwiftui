import SwiftUI

struct Chapter3View: View {
    
    var body: some View {
        VStack {
            Text("Chapter 3")
            Image (systemName: "car.side")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text("car is going _ mph")
        }
    }
}

#Preview {
    Chapter3View()
}
