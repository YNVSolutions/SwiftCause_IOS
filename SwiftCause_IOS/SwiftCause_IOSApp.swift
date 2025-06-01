import SwiftUI
import Firebase

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
