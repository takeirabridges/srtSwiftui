import SwiftUI

struct Chapter3View: View {
    @Binding var car: Car
    var body: some View {
        
        List {
            
            Text("There were a trio of boys who had common love for fast cars. Their names were Zack , Jay and Johnathan Kirk. The young boys came across Azure many times and they didn't know it  was haunted. The boys were fascinated with its exterior and supercharged engine. There were always up to no good with halloween nearing , they've had many plans of misfit and destruction. The boys thought Azure was immobile , the evil automobile was planning his next victim among them. Azure autostarted and opened his driver door to lure one of them in. One got in.. the doors locked abruptly and Azure sped off going from 0-60 in 4 seconds!  ")
            
            
            VStack {
                Text("MPH: ")
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
}
#Preview {
    Chapter3View(car: .constant(Car(make: "test", model: "test", color: Color.black)))
}

