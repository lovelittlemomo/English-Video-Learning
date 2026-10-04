import Foundation

final class WordViewModel: ObservableObject {
    @Published var words: [Word] = [
        Word(text: "practice", definition: "练习；实践", example: "Practice makes progress.", pronunciation: "/ˈpræktɪs/", note: "常用学习词汇", reviewCount: 1),
        Word(text: "obvious", definition: "明显的；显而易见的", example: "The answer is obvious.", pronunciation: "/ˈɒbvɪəs/", note: "描述易于理解的事物", reviewCount: 2),
        Word(text: "confident", definition: "自信的", example: "She feels confident in front of the camera.", pronunciation: "/ˈkɒnfɪdənt/", note: "表达自信状态", reviewCount: 4)
    ]

    var reviewWords: [Word] {
        words.filter { $0.reviewCount > 0 }
    }

    func addSampleWord() {
        let word = Word(
            text: "vocabulary",
            definition: "词汇；词汇量",
            example: "Daily practice expands your vocabulary.",
            pronunciation: "/vəˈkæbjʊləri/",
            note: "学习英语的核心词",
            reviewCount: 1
        )
        words.append(word)
    }

    func toggleMastered(_ word: Word) {
        if let index = words.firstIndex(where: { $0.id == word.id }) {
            words[index].isMastered.toggle()
        }
    }
}
