import SwiftUI
import WebKit

struct YoutubeWebView: UIViewRepresentable {

    /// 再生したい YouTube 動画ID
    let videoID: String

    /// あなたの YouTube 再生ページのベースURL
    private let baseURL = "https://tool-webs.onrender.com/youtube"

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()

        // iOSでYouTube iframeを動かすための設定
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []

        let webView = WKWebView(frame: .zero, configuration: config)

        webView.scrollView.isScrollEnabled = false
        webView.isOpaque = false
        webView.backgroundColor = .black

        // 初回ロード
        context.coordinator.lastVideoID = videoID
        loadVideo(in: webView)

        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        // 動画IDが変わったときだけ再ロード
        guard context.coordinator.lastVideoID != videoID else {
            return
        }

        context.coordinator.lastVideoID = videoID
        loadVideo(in: webView)
    }

    private func loadVideo(in webView: WKWebView) {
        var components = URLComponents(string: baseURL)
        components?.queryItems = [
            URLQueryItem(name: "phone", value: "1"),
            URLQueryItem(name: "url", value: videoID)
        ]

        guard let url = components?.url else {
            return
        }

        let request = URLRequest(url: url)
        webView.load(request)
    }

    // MARK: - Coordinator
    final class Coordinator {
        var lastVideoID: String?
    }
}
