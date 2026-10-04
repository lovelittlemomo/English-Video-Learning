import Foundation

struct VideoItem: Identifiable {
    let id: UUID
    let title: String
    let description: String
    let url: URL
    let duration: TimeInterval
    let transcript: [String]

    init(
        id: UUID = UUID(),
        title: String,
        description: String = "",
        url: URL,
        duration: TimeInterval = 0,
        transcript: [String] = []
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.url = url
        self.duration = duration
        self.transcript = transcript
    }
}
