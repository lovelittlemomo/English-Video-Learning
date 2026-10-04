import Foundation

struct LearningSession: Identifiable, Codable {
    let id: UUID
    var date: Date
    var studiedWords: [String]
    var note: String

    init(id: UUID = UUID(), date: Date = Date(), studiedWords: [String] = [], note: String = "") {
        self.id = id
        self.date = date
        self.studiedWords = studiedWords
        self.note = note
    }
}
