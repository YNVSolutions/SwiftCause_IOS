import SwiftUI

struct ContentView: View {
    @State private var showLogin = false

    var body: some View {
        VStack {
            Text("Welcome to SwiftCause")
                .font(.largeTitle)
                .padding()

            Button("Login") {
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
#Preview{
    ContentView()
}
