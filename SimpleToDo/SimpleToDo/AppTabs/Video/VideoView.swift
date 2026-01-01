import SwiftUI

struct VideoView: View {
    var body: some View {
        VStack(spacing: 24) {

            VStack(spacing: 8) {
                Image(systemName: "play.rectangle.fill")
                    .font(.system(size: 64))
                Text("Video")
                    .font(.largeTitle)
                    .bold()
            }

            VStack(spacing: 12) {
                Text("YouTube / Video Player")
                    .font(.headline)

                Text("iframe + WKWebView で実装予定")
                    .foregroundColor(.secondary)
            }

            Spacer()

            Text("Coming Soon")
                .foregroundColor(.secondary)
        }
        .padding()
    }
}
