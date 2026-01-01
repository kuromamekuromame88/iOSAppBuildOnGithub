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

// =======================
// タブ定義
// =======================
enum AppTab: Hashable {
    case chat
    case voice
    case video
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
// Voice / Call（仮実装）
// =======================
struct VoiceView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "phone.fill")
                .font(.system(size: 60))
            Text("Voice / Call (Coming Soon)")
        }
    }
}

// =======================
// Video Player（仮実装）
// =======================
struct VideoView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "play.rectangle.fill")
                .font(.system(size: 60))
            Text("YouTube / Video Player")
            Text("Coming Soon")
                .foregroundColor(.secondary)
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
