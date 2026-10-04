import Foundation
import AVFoundation

struct VideoService {
    func importLocalVideo(from url: URL) -> VideoItem {
        VideoItem(
            title: "Imported Video",
            description: "用户导入的本地视频文件",
            url: url,
            duration: 0,
            transcript: []
        )
    }
}

struct SpeechRecognitionService {
    func recognizeText(from audioURL: URL) -> [String] {
        return [
            "This is a useful phrase.",
            "I want to improve my English every day."
        ]
    }
}

struct WordExtractionService {
    func extractWords(from transcript: [String]) -> [Word] {
        let sampleWords = [
            Word(text: "useful", definition: "有用的", example: "This is a useful lesson.", pronunciation: "/ˈjuːsfəl/", note: "常见形容词"),
            Word(text: "every", definition: "每个；每一", example: "I practice every day.", pronunciation: "/ˈevri/", note: "时间表达")
        ]
        return sampleWords
    }
}

struct TextToSpeechService {
    func speak(_ text: String) {
        let synthesizer = AVSpeechSynthesizer()
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        synthesizer.speak(utterance)
    }
}

struct DatabaseService {
    func saveWords(_ words: [Word]) {
        // 预留：后续接入 Core Data / SQLite
    }

    func loadWords() -> [Word] {
        return []
    }
}
