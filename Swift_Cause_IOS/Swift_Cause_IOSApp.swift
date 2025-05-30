import SwiftUI
import Firebase

@main
struct Swift_Cause_IOSApp: App {
    init() {
            FirebaseApp.configure()
        }

        var body: some Scene {
            WindowGroup {
                ContentView() 
            }
        }
}
