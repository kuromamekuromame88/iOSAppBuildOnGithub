import SwiftUI

@main
struct SimpleToDoApp: App {

    @StateObject private var model = ViewModel()
    @State private var showSplash = true

    var body: some Scene {
        WindowGroup {
            ZStack {
                // 本体（最初から存在）
                ContentView(model: model)

                // Splash（透明化してから完全に無効化）
                SplashView()
                    .opacity(showSplash ? 1 : 0)
                    .allowsHitTesting(showSplash)
                    .zIndex(1)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        showSplash = false
                    }
                }
            }
        }
    }
}



// MARK: - SplashView

struct SplashView: View {
    @Environment(\.colorScheme) private var colorScheme

    @State private var scale: CGFloat = 0.6
    @State private var opacity: Double = 0.0

    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()

            Text("T")
                .font(.system(size: 200, weight: .bold))
                .foregroundColor(textColor)
                .scaleEffect(scale)
                .opacity(opacity)
        }
        .onAppear {
            // 拡大 + フェードイン
            withAnimation(.easeOut(duration: 0.5)) {
                scale = 1.2
                opacity = 1.0
            }

            // 縮小 + フェードアウト
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
                withAnimation(.easeIn(duration: 0.5)) {
                    scale = 0.8
                    opacity = 0.0
                }
            }
        }
    }

    private var backgroundColor: Color {
        colorScheme == .dark ? .black : .white
    }

    private var textColor: Color {
        colorScheme == .dark ? .white : .black
    }
}
