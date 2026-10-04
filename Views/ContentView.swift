import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appStore: AppStore

    var body: some View {
        TabView {
            VideoPlayerView()
                .tabItem {
                    Label("视频", systemImage: "play.rectangle")
                }

            WordListView()
                .tabItem {
                    Label("单词", systemImage: "text.book.closed")
                }

            VocabularyView()
                .tabItem {
                    Label("生词本", systemImage: "bookmark.fill")
                }

            FlashCardView()
                .tabItem {
                    Label("闪卡", systemImage: "card.fill")
                }

            SettingsView()
                .tabItem {
                    Label("设置", systemImage: "gearshape")
                }
        }
        .frame(minWidth: 1100, minHeight: 700)
    }
}

#Preview {
    ContentView()
        .environmentObject(AppStore())
}
