import SwiftUI
import WebKit

struct YoutubeWebView: UIViewRepresentable {

    /// 既に生成済みの WebView を受け取る
    let webView: WKWebView

    func makeUIView(context: Context) -> WKWebView {
        webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        // 何もしない
        // ※ ここで load() するとタブ切替時に再生が止まる
    }
}
