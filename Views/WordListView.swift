import SwiftUI

struct WordListView: View {
    @StateObject private var viewModel = WordViewModel()

    var body: some View {
        NavigationStack {
            List(viewModel.words) { word in
                VStack(alignment: .leading, spacing: 6) {
                    HStack {
                        Text(word.text)
                            .font(.title3)
                            .fontWeight(.semibold)

                        Spacer()

                        Button(action: {
                            viewModel.toggleMastered(word)
                        }) {
                            Image(systemName: word.isMastered ? "checkmark.circle.fill" : "circle")
                                .foregroundStyle(word.isMastered ? .green : .gray)
                        }
                        .buttonStyle(.plain)
                    }

                    Text(word.definition)
                        .font(.body)

                    Text("例句：\(word.example)")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("单词表")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("新增") {
                        viewModel.addSampleWord()
                    }
                }
            }
        }
    }
}

#Preview {
    WordListView()
}
