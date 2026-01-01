import SwiftUI

struct VoiceView: View {
    var body: some View {
        VStack(spacing: 24) {

            VStack(spacing: 8) {
                Image(systemName: "phone.fill")
                    .font(.system(size: 64))
                Text("Voice / Call")
                    .font(.largeTitle)
                    .bold()
            }

            VStack(spacing: 12) {
                Text("Voice & Video Call")
                    .font(.headline)

                Text("WebRTC / SkyWay 連携予定")
                    .foregroundColor(.secondary)
            }

            Spacer()

            Button(action: {
                // 将来：通話開始
            }) {
                Text("Start Call")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
        }
        .padding()
    }
}
