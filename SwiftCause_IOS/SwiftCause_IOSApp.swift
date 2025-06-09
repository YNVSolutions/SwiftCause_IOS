import SwiftUI
import FirebaseCore
import FirebaseAuth
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
