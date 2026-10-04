import Foundation

struct Word: Identifiable, Codable {
    let id: UUID
    var text: String
    var definition: String
    var example: String
    var pronunciation: String
    var note: String
    var isMastered: Bool
    var reviewCount: Int
    var createdAt: Date

    init(
        id: UUID = UUID(),
        text: String,
        definition: String,
        example: String,
        pronunciation: String = "",
        note: String = "",
        isMastered: Bool = false,
        reviewCount: Int = 0,
        createdAt: Date = Date()
    ) {
        self.id = id
        self.text = text
        self.definition = definition
        self.example = example
        self.pronunciation = pronunciation
        self.note = note
        self.isMastered = isMastered
        self.reviewCount = reviewCount
        self.createdAt = createdAt
    }
}
