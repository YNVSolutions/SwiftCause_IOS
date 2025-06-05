import SwiftUI

struct ContentView: View {
    @State private var showLogin = false

    var body: some View {
        NavigationStack {
            HStack {
                
                NavigationLink {
                    LoginView()
                } label: {
                    Text("Login Screen")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                NavigationLink {
                    CampaignsView()
                } label: {
                    Text("Campaigns Screen")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                Spacer()
            }
            .navigationTitle("Swift Cause")
        }
    }
}
#Preview{
    ContentView()
}
