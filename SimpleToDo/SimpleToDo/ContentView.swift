import SwiftUI

struct ContentView: View {

    @State private var selectedTab: AppTab = .chat

    var body: some View {
        TabView(selection: $selectedTab) {

            ChatView()
                .tabItem {
                    Label("Chat", systemImage: "message.fill")
                }
                .tag(AppTab.chat)

            VoiceView()
                .tabItem {
                    Label("Voice", systemImage: "phone.fill")
                }
                .tag(AppTab.voice)

            VideoView()
                .tabItem {
                    Label("Video", systemImage: "play.rectangle.fill")
                }
                .tag(AppTab.video)
        }
    }
}

enum AppTab: Hashable {
    case chat
    case voice
    case video
}
