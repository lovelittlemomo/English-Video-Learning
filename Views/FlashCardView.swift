import SwiftUI

struct FlashCardView: View {
    @StateObject private var viewModel = LearningViewModel()
    @State private var isFlipped = false

    var body: some View {
        VStack(spacing: 20) {
            Text("闪卡复习")
                .font(.title2)
                .fontWeight(.bold)

            if let word = viewModel.currentWord {
                ZStack {
                    RoundedRectangle(cornerRadius: 24)
                        .fill(isFlipped ? Color.blue.opacity(0.9) : Color(.secondarySystemBackground))
                        .frame(width: 360, height: 240)
                        .shadow(radius: 10)

                    VStack {
                        Text(isFlipped ? word.definition : word.text)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(isFlipped ? .white : .primary)

                        if isFlipped {
                            Text(word.example)
                                .foregroundStyle(.white.opacity(0.9))
                                .padding(.top, 8)
                        }
                    }
                    .padding()
                }
                .onTapGesture {
                    withAnimation {
                        isFlipped.toggle()
                    }
                }

                HStack {
                    Button(action: viewModel.markAgain) {
                        Label("再看一次", systemImage: "arrow.counterclockwise")
                    }
                    .buttonStyle(.bordered)

                    Spacer()

                    Button(action: viewModel.markKnown) {
                        Label("我知道了", systemImage: "checkmark")
                    }
                    .buttonStyle(.borderedProminent)
                }
                .frame(width: 360)
            } else {
                Text("今天没有可复习的单词")
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
    }
}

#Preview {
    FlashCardView()
}
