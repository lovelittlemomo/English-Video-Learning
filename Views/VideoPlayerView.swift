import SwiftUI
import AVKit

struct VideoPlayerView: View {
    @StateObject private var viewModel = VideoViewModel()

    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("学习视频")
                    .font(.title2)
                    .fontWeight(.bold)

                Spacer()

                Button(action: {
                    viewModel.importVideo()
                }) {
                    Label("导入视频", systemImage: "plus")
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()

            if let video = viewModel.selectedVideo {
                VStack(alignment: .leading, spacing: 16) {
                    Text(video.title)
                        .font(.title3)
                        .fontWeight(.semibold)

                    VideoPlayer(player: AVPlayer(url: video.url))
                        .frame(height: 420)
                        .cornerRadius(16)

                    VStack(alignment: .leading, spacing: 8) {
                        Text("视频描述")
                            .font(.headline)
                        Text(video.description)
                            .font(.body)
                            .foregroundStyle(.secondary)
                    }
                }
                .padding(.horizontal)
            } else {
                VStack(spacing: 16) {
                    Image(systemName: "video.badge.plus")
                        .font(.system(size: 52))
                        .foregroundStyle(.secondary)

                    Text("还没有导入视频")
                        .font(.title3)
                        .foregroundStyle(.secondary)

                    Text("点击上方“导入视频”按钮，添加本地视频文件")
                        .foregroundStyle(.secondary)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}

#Preview {
    VideoPlayerView()
}
