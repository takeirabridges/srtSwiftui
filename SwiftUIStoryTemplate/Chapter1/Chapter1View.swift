import SwiftUI

struct Chapter1View: View {
    var body: some View {
        TabView{
            pageONE()
            pageTWO()
            pageTHREE()
        }
        .tabViewStyle(.page)
        .ignoresSafeArea()
    }
}
//
struct Chapter1View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter1View()
    }
}
