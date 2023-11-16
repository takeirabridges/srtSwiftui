import SwiftUI

struct Chapter4View: View {
    var body: some View {
        TabView{
            page1()
            page2()

        }
        .tabViewStyle(.page)
        .ignoresSafeArea()
    }
    }
struct Chapter4View_Previews: PreviewProvider{
    static var previews: some View {
    Chapter4View()
}
}
