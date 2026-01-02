import SwiftUI
import WebKit

// =======================
// YouTube WebView
// =======================
struct YouTubeWebView: UIViewRepresentable {

    let videoID: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.scrollView.isScrollEnabled = false
        webView.backgroundColor = .clear
        webView.isOpaque = false
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        let html = """
        <!DOCTYPE html>
        <html>
        <head>
        <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0">
        <style>
            body {
                margin: 0;
                padding: 0;
                background-color: black;
            }
            iframe {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
            }
        </style>
        </head>
        <body>
            <iframe
                src="https://www.youtube.com/embed/\(videoID)?playsinline=1"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen>
            </iframe>
        </body>
        </html>
        """

        webView.loadHTMLString(html, baseURL: nil)
    }
}
