import SwiftUI

struct ContentView: View {
    @State private var boosted = false

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.black, Color.blue.opacity(0.45), .black],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 24) {
                Spacer()

                Image(systemName: "bolt.fill")
                    .font(.system(size: 64))
                    .foregroundStyle(.cyan)

                Text("iPhone Optimizer")
                    .font(.system(size: 32, weight: .bold))

                Text("Tối ưu hóa các thiết lập mà iOS cho phép ứng dụng truy cập.")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal)

                Button {
                    boosted = true
                } label: {
                    Label(boosted ? "Đã tối ưu" : "Quick Boost",
                          systemImage: boosted ? "checkmark.circle.fill" : "bolt.fill")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.cyan.opacity(0.18))
                        .clipShape(RoundedRectangle(cornerRadius: 18))
                }
                .padding(.horizontal)

                Text("Lưu ý: iOS không cho ứng dụng bên thứ ba tự ý giải phóng RAM, xóa cache của app khác hoặc điều khiển CPU/GPU.")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                Spacer()
            }
            .foregroundStyle(.white)
        }
    }
}
