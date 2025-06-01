import SwiftUI
import FirebaseAuth
import FirebaseAuthUI
import FirebaseEmailAuthUI

struct LoginView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UINavigationController {
        let authUI = FUIAuth.defaultAuthUI()!
        authUI.providers = [FUIEmailAuth()]

        let authViewController = authUI.authViewController()
        return UINavigationController(rootViewController: authViewController)
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {}
}

