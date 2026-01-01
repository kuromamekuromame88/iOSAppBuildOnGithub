import SwiftUI

@main
struct SimpleToDoApp: App {
    @State private var showSplash = true

    var body: some Scene {
        WindowGroup {
            if showSplash {
                SplashView()
                    .onAppear {
                        // スプラッシュ表示時間（秒）
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
                            withAnimation {
                                showSplash = false
                            }
                        }
                    }
            } else {
                ContentView()
            }
        }
    }
}
