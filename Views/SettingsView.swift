import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("学习设置") {
                    Toggle("自动保存笔记", isOn: .constant(true))
                    Toggle("自动播放发音", isOn: .constant(false))
                    Toggle("启用复习提醒", isOn: .constant(true))
                }

                Section("数据管理") {
                    Button("导出生词本") {}
                    Button("清空复习记录") {}
                }

                Section("关于") {
                    Text("English Video Learning")
                    Text("适用于 Mac 和 iPad")
                }
            }
            .navigationTitle("设置")
        }
    }
}

#Preview {
    SettingsView()
}
