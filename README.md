# English Video Learning

一个适合 Mac 和 iPad 的学习应用，帮助你在看视频时快速记录和复习英文单词。

## 适用设备

- MacBook（M1 / M2 / Intel）
- iPad（iPadOS 15+）

## 设计目标

- 让用户在看英文视频时，轻松记录不认识的单词
- 支持“视频 + 单词 + 例句 + 发音 + 笔记”整合学习
- 提供生词本和闪卡复习机制
- 适合日常英语提升和词汇积累

## 当前已搭建内容

这个仓库里已经开始搭建一个 SwiftUI 应用的基础结构，包含：

- 统一应用入口
- 首页标签页
- 视频播放页面骨架
- 单词列表页面
- 生词本页面
- 闪卡页面
- 学习记录结构
- 语音识别与发音服务抽象
- 数据模型和视图模型

## 目录结构

```text
EnglishVideoLearning/
├── App/
│   └── EnglishVideoLearningApp.swift
├── Models/
│   ├── Word.swift
│   ├── VideoItem.swift
│   └── LearningSession.swift
├── ViewModels/
│   ├── AppStore.swift
│   ├── VideoViewModel.swift
│   ├── WordViewModel.swift
│   └── LearningViewModel.swift
├── Services/
│   ├── VideoService.swift
│   ├── SpeechRecognitionService.swift
│   ├── WordExtractionService.swift
│   ├── TextToSpeechService.swift
│   └── DatabaseService.swift
├── Views/
│   ├── ContentView.swift
│   ├── VideoPlayerView.swift
│   ├── WordListView.swift
│   ├── VocabularyView.swift
│   ├── FlashCardView.swift
│   └── SettingsView.swift
├── Utils/
│   └── Constants.swift
└── README.md
```

## 下一步计划

1. 完善视频导入与播放
2. 接入语音识别并从视频文本提取单词
3. 完成单词详情页与例句展示
4. 接入生词本和复习算法
5. 完成闪卡与学习统计
6. 继续完善 Mac + iPad 适配

## 运行方式

你可以在 Mac 上用 Xcode 打开一个新的 SwiftUI App，然后将这些 Swift 文件放进项目中即可运行。

如果你愿意，我下一步可以继续为你做：

- 生成可直接复制到 Xcode 的完整 App 主体代码
- 继续补齐 `Xcode project` 结构化文件
- 继续扩展生词本和闪卡功能

## 说明

这个项目目前是“可继续开发的代码骨架”，并非最终商业级完整产品；后续可以逐步接入真实的语音识别、词典 API、AI 学习推荐等能力。
