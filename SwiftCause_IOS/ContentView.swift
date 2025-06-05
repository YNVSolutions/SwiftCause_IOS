import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("main")
                    .ignoresSafeArea()
                VStack{
                    Text("Swift Cause")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .bold()
                    NavigationLink(destination: Login()) {
                        Text("Login Page")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
