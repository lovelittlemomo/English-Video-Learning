import Foundation

struct WordExtractionService {
    func extractWords(from transcript: [String]) -> [Word] {
        // 未来对接词频提取和词典 API
        return [
            Word(text: "learn", definition: "学习", example: "You can learn from the video.", pronunciation: "/lɜːn/", note: "非常常见的学习动词"),
            Word(text: "daily", definition: "每日的；日常的", example: "Daily practice helps a lot.", pronunciation: "/ˈdeɪli/", note: "经常用于学习计划中")
        ]
    }
}
