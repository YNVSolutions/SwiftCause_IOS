import SwiftUI
import FirebaseCore
import FirebaseAuth
import StripePaymentSheet
import StripePaymentsUI
@main
struct SwiftCause_IOSApp: App {
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
