import SwiftUI

struct VideoView: View {

    let webViewStore: WebViewStore

    var body: some View {
        YoutubeWebView(webView: webViewStore.webView)
            .ignoresSafeArea()
            .navigationTitle("Video")
            .navigationBarTitleDisplayMode(.inline)
    }
}
