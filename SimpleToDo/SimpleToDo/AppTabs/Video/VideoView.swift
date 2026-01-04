import SwiftUI
import WebKit

/// WebViewを生存させるためのストア
final class WebViewStore: ObservableObject {

    let webView: WKWebView

    init() {
        let config = WKWebViewConfiguration()

        // YouTube再生に必須
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []

        let webView = WKWebView(frame: .zero, configuration: config)

        webView.scrollView.isScrollEnabled = true
        webView.isOpaque = false
        webView.backgroundColor = .black

        if let url = URL(string: "https://tool-webs.onrender.com/youtube?phone=true") {
            webView.load(URLRequest(url: url))
        }

        self.webView = webView
    }
}

struct VideoView: View {

    /// タブ切替しても破棄されない
    @StateObject private var webViewStore = WebViewStore()

    var body: some View {
        YoutubeWebView(webView: webViewStore.webView)
            .ignoresSafeArea()
            .navigationTitle("Video")
            .navigationBarTitleDisplayMode(.inline)
    }
}
