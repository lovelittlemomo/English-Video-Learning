import Foundation
import AVFoundation

struct SpeechRecognitionService {
    func recognizeText(from url: URL) -> [String] {
        // 未来对接 Apple Speech Framework
        return [
            "Let's learn a new word.",
            "This phrase is helpful for daily conversation."
        ]
    }
}
