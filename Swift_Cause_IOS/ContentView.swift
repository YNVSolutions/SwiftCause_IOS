import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.1)
                .ignoresSafeArea()

            VStack {
                Spacer()

                Text("SwiftCause")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.blue)
                    .padding(.bottom, 10)
                
                Text("Empowering your passion for positive change.")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.bottom, 30)

      
                Text("SwiftCause helps you discover, support, and connect with causes that matter most to you. Make a difference, one swift action at a time.")
                    .font(.body)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 50)

        
                Button(action: {
                   
                    print("Get Started!")
                }) {
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.vertical, 15)
                        .padding(.horizontal, 40)
                        .background(
                            Capsule()
                                .fill(Color.blue)
                                .shadow(radius: 5)
                        )
                }
                .padding(.bottom, 50)

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

