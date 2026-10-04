import SwiftUI

@main
struct EnglishVideoLearningApp: App {
    @StateObject private var appStore = AppStore()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appStore)
        }
    }
}
