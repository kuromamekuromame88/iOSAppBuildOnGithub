import WebKit

final class WebViewStore: ObservableObject {

    let webView: WKWebView

    init() {
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []

        let webView = WKWebView(frame: .zero, configuration: config)
        webView.isOpaque = false
        webView.backgroundColor = .black

        if let url = URL(string: "https://tool-webs.onrender.com/youtube?phone=true") {
            webView.load(URLRequest(url: url))
        }

        self.webView = webView
    }
}
