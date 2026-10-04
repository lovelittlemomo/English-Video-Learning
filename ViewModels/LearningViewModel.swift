import Foundation

final class LearningViewModel: ObservableObject {
    @Published var words: [Word] = [
        Word(text: "analyze", definition: "分析；研究", example: "We need to analyze the sentence structure.", pronunciation: "/ˈænəlaɪz/", note: "常用于学习和阅读分析", reviewCount: 3),
        Word(text: "expression", definition: "表达；措辞", example: "His expression was very natural.", pronunciation: "/ɪkˈspreʃən/", note: "与口语表达相关", reviewCount: 2)
    ]

    var currentWord: Word? {
        words.first
    }

    func markKnown() {
        guard let word = currentWord else { return }
        if let index = words.firstIndex(where: { $0.id == word.id }) {
            words[index].reviewCount += 1
            words.remove(at: index)
        }
    }

    func markAgain() {
        guard let word = currentWord else { return }
        if let index = words.firstIndex(where: { $0.id == word.id }) {
            words[index].reviewCount += 1
            words.append(words.remove(at: index))
        }
    }
}
