import SwiftUI
import WebKit

struct YoutubeWebView: UIViewRepresentable {

    /// 再生したい YouTube 動画ID
    let videoID: String

    /// あなたの YouTube 再生ページのベースURL
    private let baseURL = "https://tool-webs.onrender.com/youtube"

    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()

        // 重要：iOSでYouTube iframeを動かすための設定
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []

        let webView = WKWebView(frame: .zero, configuration: config)

        // WebView 側で余計な挙動をしないように
        webView.scrollView.isScrollEnabled = false
        webView.isOpaque = false
        webView.backgroundColor = .black

        loadVideo(in: webView)
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        loadVideo(in: webView)
    }

    private func loadVideo(in webView: WKWebView) {
        var components = URLComponents(string: baseURL)
        components?.queryItems = [
            URLQueryItem(name: "url", value: videoID)
        ]

        guard let url = components?.url else {
            return
        }

        let request = URLRequest(url: url)
        webView.load(request)
    }
}
