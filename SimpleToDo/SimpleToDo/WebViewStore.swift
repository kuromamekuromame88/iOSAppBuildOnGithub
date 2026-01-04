import WebKit

final class WebViewStore: ObservableObject {

    let webView: WKWebView

    init() {
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []

        let webView = WKWebView(frame: .zero, configuration: config)
        webView.scrollView.isScrollEnabled = true
        webView.isOpaque = false
        webView.backgroundColor = .white

        if let url = URL(string: "https://tool-webs.onrender.com/youtube?phone=true") {
            webView.load(URLRequest(url: url))
        }

        self.webView = webView
    }
}
