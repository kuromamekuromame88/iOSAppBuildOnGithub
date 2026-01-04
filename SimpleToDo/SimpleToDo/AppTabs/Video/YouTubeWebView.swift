import SwiftUI
import WebKit

struct YoutubeWebView: UIViewRepresentable {

    let webView: WKWebView

    func makeUIView(context: Context) -> WKWebView {
        webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        // 再ロードしない
    }
}
