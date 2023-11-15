import SwiftUI

struct Chapter3View: View {
    @Binding var car: Car
    var body: some View {
            VStack {
                       Text("The car speed is: ")
                Text("\(car.currentSpeed)")
                           .font(.largeTitle)
                       
                    Image("srtsketch")
//                Image(systemName: "car")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(car.color)

                           .font(.largeTitle)
                           .onTapGesture {
                               car.accelerate()
                           }
        }
    }
}

#Preview {
    Chapter3View(car: .constant(Car(make: "test", model: "test", color: Color.red)))
}
