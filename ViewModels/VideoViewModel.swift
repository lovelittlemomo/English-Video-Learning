import Foundation
import SwiftUI

final class VideoViewModel: ObservableObject {
    @Published var selectedVideo: VideoItem?

    func importVideo() {
        let sampleURL = URL(fileURLWithPath: "/Users/example/sample-video.mp4")
        selectedVideo = VideoItem(
            title: "Daily English Conversation",
            description: "这是一个适合提升英语表达的教学视频，包含日常对话与常用词汇。",
            url: sampleURL,
            duration: 360,
            transcript: [
                "Today we are learning useful expressions.",
                "This is a great way to improve your English."
            ]
        )
    }
}
