import SwiftUI

struct Chapter3View: View {
    @Binding var car: Car
    var body: some View {
        VStack {
            Text("Chapter 3")
            Image (systemName: "car.side")
                .foregroundColor(car.color)
            Text("car is going _ mph")
        }
    }
}

#Preview {
    Chapter3View(car: .constant(Car(make: "test", model: "test", color: Color.red)))
}
