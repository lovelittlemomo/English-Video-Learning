import Foundation

struct DatabaseService {
    func saveWords(_ words: [Word]) {
        // 这里预留 Core Data / SQLite 接入
    }

    func loadWords() -> [Word] {
        return []
    }
}
