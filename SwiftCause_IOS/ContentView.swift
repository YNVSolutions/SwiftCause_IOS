import SwiftUI

struct ContentView: View {
    @State private var showLogin = false

    var body: some View {
        VStack {
            
            Text("welcome_message")
                .font(.largeTitle)
                .padding()

            Text("current_campaigns")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            Button("login_button") {
                showLogin = true
            }
            .font(.title2)
            .padding()
            .sheet(isPresented: $showLogin) {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
