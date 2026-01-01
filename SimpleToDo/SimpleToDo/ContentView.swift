import SwiftUI

// =======================
// アプリの初期画面（ルート）
// =======================
struct ContentView: View {

    @State private var selectedTab: AppTab = .chat

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
        }
    }
}

// =======================
// タブ定義
// =======================
enum AppTab {
    case chat
    case voice
}

// =======================
// Chat（仮実装）
// =======================
struct ChatView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "message.fill")
                .font(.system(size: 60))
            Text("Chat (Coming Soon)")
        }
    }
}

// =======================
// Voice / Video（仮実装）
// =======================
struct VoiceView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "video.fill")
                .font(.system(size: 60))
            Text("Voice / Video (Coming Soon)")
        }
    }
}

// =======================
// Preview
// =======================
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
