import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack(spacing: 24) {

            // ヘッダー
            VStack(spacing: 8) {
                Image(systemName: "message.fill")
                    .font(.system(size: 64))
                Text("Chat")
                    .font(.largeTitle)
                    .bold()
            }

            // メイン領域
            VStack(spacing: 12) {
                Text("WebSocket Chat")
                    .font(.headline)

                Text("webchat を iOS 向けに移植予定")
                    .foregroundColor(.secondary)
            }

            Spacer()

            // フッター
            Text("Coming Soon")
                .foregroundColor(.secondary)
        }
        .padding()
    }
}
