import Foundation
import SwiftUI

final class AppStore: ObservableObject {
    @Published var words: [Word] = [
        Word(
            text: "curious",
            definition: "好奇的；想知道的",
            example: "I am curious about the story behind this video.",
            pronunciation: "/ˈkjʊəriəs/",
            note: "适合用来描述兴趣和探究心理",
            reviewCount: 2
        ),
        Word(
            text: "improve",
            definition: "改善；提高",
            example: "I want to improve my English speaking skills.",
            pronunciation: "/ɪmˈpruːv/",
            note: "常见商务和学习词",
            reviewCount: 3
        )
    ]

    @Published var selectedVideo: VideoItem?

    func addWord(_ word: Word) {
        words.append(word)
    }
}
