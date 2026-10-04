import SwiftUI

struct VocabularyView: View {
    @StateObject private var wordViewModel = WordViewModel()

    var body: some View {
        NavigationStack {
            List(wordViewModel.reviewWords) { word in
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(word.text)
                            .font(.headline)
                        Spacer()
                        Text("复习次数：\(word.reviewCount)")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }

                    Text(word.definition)
                        .font(.body)

                    Text(word.example)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
            .navigationTitle("生词本")
        }
    }
}

#Preview {
    VocabularyView()
}
