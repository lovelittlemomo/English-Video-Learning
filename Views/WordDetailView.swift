import SwiftUI

struct WordDetailView: View {
    let word: Word

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 18) {
                Text(word.text)
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text(word.pronunciation.isEmpty ? "发音：未录入" : word.pronunciation)
                    .font(.title3)
                    .foregroundStyle(.secondary)

                VStack(alignment: .leading, spacing: 8) {
                    Text("中文意思")
                        .font(.headline)
                    Text(word.definition)
                        .font(.body)
                }

                VStack(alignment: .leading, spacing: 8) {
                    Text("例句")
                        .font(.headline)
                    Text(word.example)
                        .font(.body)
                        .foregroundStyle(.secondary)
                }

                if !word.note.isEmpty {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("笔记")
                            .font(.headline)
                        Text(word.note)
                            .font(.body)
                            .foregroundStyle(.secondary)
                    }
                }

                Button(action: {
                    TextToSpeechService().speak(word.text)
                }) {
                    Label("播放发音", systemImage: "speaker.wave.2.fill")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
        .navigationTitle("单词详情")
    }
}

#Preview {
    NavigationStack {
        WordDetailView(word: Word(
            text: "curious",
            definition: "好奇的；想知道的",
            example: "I am curious about the story behind this video.",
            pronunciation: "/ˈkjʊəriəs/",
            note: "适合用来描述兴趣和探究心理"
        ))
    }
}
