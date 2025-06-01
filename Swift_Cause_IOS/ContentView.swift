import SwiftUI
import Firebase
import FirebaseAuthUI
import FirebaseEmailAuthUI
import FirebaseOAuthUI

struct ContentView: View {
    @State private var showFirebaseUILogin = true
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [
                    Color(red: 0.0, green: 0.0, blue: 0.5), .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                .ignoresSafeArea()
            
            Text("Swift Cause")
                .foregroundColor(.white)
                .font(.system(size: 40, weight: .bold, design: .rounded))
                .offset(x: -50, y: -50)
        }
        .sheet(isPresented: $showFirebaseUILogin) {
            FirebaseUIWrapper()

        }
    }
}

struct FirebaseUIWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UINavigationController {
        let authUI = FUIAuth.defaultAuthUI()!
        
        authUI.providers = [
            FUIEmailAuth(),
            FUIOAuth.appleAuthProvider()
        ]
        
        return authUI.authViewController()
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {}
}

