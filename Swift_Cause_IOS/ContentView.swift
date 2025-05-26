import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue.opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            
            Circle()
                .fill(Color.blue.opacity(0.1))
                .frame(width: 300, height: 300)
                .offset(x: -150, y: -200)
                .blur(radius: 50)

            RoundedRectangle(cornerRadius: 30)
                .fill(Color.black.opacity(0.05))
                .frame(width: 400, height: 200)
                .offset(x: 100, y: 250)
                .rotationEffect(.degrees(15))
                .blur(radius: 40)
            VStack {
                Spacer()

                Text("SwiftCause")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.blue)
                    .padding(.bottom, 10)

                Text("Empowering your passion for positive change.")
                    .font(.title2)
                    .foregroundColor(.black.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.bottom, 30)

                Text("SwiftCause helps you discover, support, and connect with causes that matter most to you. Make a difference, one swift action at a time.")
                    .font(.body)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 50)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white.opacity(0.8))
                            .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
                            .padding(.horizontal, 10)
                    )

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
                                .shadow(color: .blue.opacity(0.4), radius: 10, x: 0, y: 5)
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
