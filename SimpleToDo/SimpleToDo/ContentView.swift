import SwiftUI

// =======================
// アプリの初期画面（ルート）
// =======================
struct ContentView: View {

    // タブ管理
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
// Chat
// =======================
struct ChatView: View {
    @StateObject private var vm = ChatViewModel()

    var body: some View {
        VStack {
            MessageList(messages: vm.messages)
            MessageInput(onSend: vm.send)
        }
    }
}

// =======================
// Voice / Video
// =======================
struct VoiceView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "video.fill")
                .font(.system(size: 80))

            Text("Voice / Video Call")
                .font(.title)

            Button("Start Call") {
                // 通話開始処理
            }
        }
    }
}

// =======================
// Preview
// =======================
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(model: ViewModel())
    }
}
