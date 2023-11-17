import SwiftUI

struct page2: View {
    @State private var selectedRacers = 0
    @State private var selectedRaceLength = 0
    @State private var selectedLocation = 0
    @State private var raceInProgress = false
    @State private var raceProgress: CGFloat = 0.0

    let racers = [2, 4, 6, 8, 10]
    let raceLengths = ["Short", "Medium", "Long"]
    let locations = ["Fort", "Woodward", "Gratiot","Michigan"]

    var body: some View {
        VStack {
            Text("Number of Racers: \(selectedRacers)")
                .padding()

            Picker("Racers", selection: $selectedRacers) {
                ForEach(racers, id: \.self) { racerCount in
                    Text("\(racerCount)").tag(racerCount)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()

            Text("Race Length: \(raceLengths[selectedRaceLength])")
                .padding()

            Picker("Race Length", selection: $selectedRaceLength) {
                ForEach(0..<raceLengths.count) { index in
                    Text(raceLengths[index]).tag(index)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()

            Text("Location: \(locations[selectedLocation])")
                .padding()

            Picker("Location", selection: $selectedLocation) {
                ForEach(0..<locations.count) { index in
                    Text(locations[index]).tag(index)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()

            Button("Start Race") {
                raceInProgress.toggle()
                simulateRace()
            }
            .padding()
            .disabled(raceInProgress)

            Spacer()

            if raceInProgress {
                ProgressView(value: raceProgress, total: 1.0)
                    .padding()
            }
        }
        .padding()
    }

    private func simulateRace() {
        raceProgress = 0.0
        withAnimation(Animation.linear(duration: 10.0)) {
            raceProgress = 1.0
        }
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        page2()
    }
}
