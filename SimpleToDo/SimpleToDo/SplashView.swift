import SwiftUI

struct SplashView: View {
    @Environment(\.colorScheme) private var colorScheme

    @State private var scale: CGFloat = 0.6
    @State private var opacity: Double = 0.0

    var body: some View {
        ZStack {
            // 背景色（ライト / ダーク）
            backgroundColor
                .ignoresSafeArea()

            // ロゴ文字「T」
            Text("T")
                .font(.system(size: 120, weight: .bold))
                .foregroundColor(textColor)
                .scaleEffect(scale)
                .opacity(opacity)
        }
        .onAppear {
            // 拡大 + フェードイン
            withAnimation(.easeOut(duration: 0.8)) {
                scale = 1.2
                opacity = 1.0
            }

            // 少し待ってから縮小 + フェードアウト
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
                withAnimation(.easeIn(duration: 0.6)) {
                    scale = 0.8
                    opacity = 0.0
                }
            }
        }
    }

    // MARK: - 色定義

    private var backgroundColor: Color {
        colorScheme == .dark ? .black : .white
    }

    private var textColor: Color {
        colorScheme == .dark ? .white : .black
    }
}
