import SwiftUI
import WebKit

// =======================
// Video View
// =======================
struct VideoView: View {

    // 現在再生中の動画ID
    @State private var videoID: String = "dQw4w9WgXcQ"

    // 入力用
    @State private var inputID: String = ""

    var body: some View {
        VStack(spacing: 12) {

            // YouTube Player
            YoutubeWebView(videoID: videoID)
                .edgesIgnoringSafeArea(.horizontal)
                .frame(height: 500)

            // 入力エリア
            VStack(spacing: 8) {

                Text("YouTube Video ID")
                    .font(.caption)
                    .foregroundColor(.secondary)

                TextField("例: dQw4w9WgXcQ", text: $inputID)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .disableAutocorrection(true)

                Button(action: applyVideoID) {
                    Text("動画を切り替える")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()

            Spacer()
        }
        .navigationTitle("Video")
    }

    private func applyVideoID() {
        let trimmed = inputID.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return }
        videoID = trimmed
    }
}
