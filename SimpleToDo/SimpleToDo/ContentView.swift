import SwiftUI

struct ContentView: View {

    @State private var selectedTab: AppTab = .chat

    // ★ 唯一のインスタンス
    @StateObject private var webViewStore = WebViewStore()

    var body: some View {
        TabView(selection: $selectedTab) {

            ChatView()
                .tabItem {
                    Label("Chat", systemImage: "message")
                }
                .tag(AppTab.chat)

            VoiceView()
                .tabItem {
                    Label("Voice", systemImage: "phone")
                }
                .tag(AppTab.voice)

            VideoView(webViewStore: webViewStore)
                .tabItem {
                    Label("Video", systemImage: "play.rectangle")
                }
                .tag(AppTab.video)
        }
    }
}

enum AppTab {
    case chat
    case voice
    case video
}
