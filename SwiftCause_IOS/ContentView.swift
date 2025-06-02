import SwiftUI

struct ContentView: View {
    @State private var showLogin = false

    var body: some View {
            TabView{
                    CampaignsView()
                        .tabItem(){
                            Image(systemName: "person.fill")
                            Text("Campaigns")
                        }
                    LoginView()
                        .tabItem(){
                            Image(systemName: "envelope")
                            Text("Login")
                        }
                }
        ZStack{
            VStack {
                Text("Welcome to SwiftCause")
                    .font(.largeTitle)
                    .padding()

            }
        }
    }
}
#Preview{
    ContentView()
}
