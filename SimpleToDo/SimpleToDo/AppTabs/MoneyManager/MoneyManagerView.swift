import SwiftUI

struct MoneyManagerView: View {
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
                Text("MoneyManager")
                    .font(.headline)

                Text("所持金管理ソフト")
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