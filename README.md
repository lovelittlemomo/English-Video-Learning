# English Video Learning - iOS/macOS App

一个帮助用户通过视频学习英文单词的应用，支持 Mac 和 iPad。

## 功能特性

- 📹 上传和播放本地视频文件
- 🎤 自动识别视频中的英文字幕（语音识别）
- 📝 自动提取和记录英文单词
- 📚 生词本管理
- 📖 单词详情（释义、例句、发音）
- 🎯 闪卡学习系统
- 📋 学习笔记
- 🔄 复习功能
- 🔊 单词发音

## 系统要求

- **Mac**: macOS 12.0 或更高版本
- **iPad**: iPadOS 15.0 或更高版本
- **开发环境**: Xcode 13.0 或更高版本
- **Swift**: 5.5 或更高版本

## 项目结构

```
EnglishVideoLearning/
├── EnglishVideoLearning.xcodeproj
├── EnglishVideoLearning/
│   ├── App/
│   │   └── EnglishVideoLearningApp.swift
│   ├── Views/
│   │   ├── ContentView.swift
│   │   ├── VideoPlayerView.swift
│   │   ├── WordListView.swift
│   │   ├── VocabularyView.swift
│   │   ├── FlashCardView.swift
│   │   └── SettingsView.swift
│   ├── Models/
│   │   ├── Word.swift
│   │   ├── Video.swift
│   │   └── LearningSession.swift
│   ├── ViewModels/
│   │   ├── VideoViewModel.swift
│   │   ├── WordViewModel.swift
│   │   └── LearningViewModel.swift
│   ├── Services/
│   │   ├── VideoService.swift
│   │   ├── SpeechRecognitionService.swift
│   │   ├── WordExtractionService.swift
│   │   ├── TextToSpeechService.swift
│   │   └── DatabaseService.swift
│   └── Utils/
│       └── Constants.swift
```

## 快速开始

### 1. 环境准备

```bash
# 确保已安装 Xcode
xcode-select --install

# 如果需要更新 Xcode
# 从 App Store 打开 Xcode 并更新
```

### 2. 克隆项目

```bash
git clone https://github.com/lovelittlemomo/English-Video-Learning.git
cd English-Video-Learning
```

### 3. 打开项目

```bash
open EnglishVideoLearning.xcodeproj
```

### 4. 在 Xcode 中运行

- 选择目标设备（Mac 或 iPad 模拟器）
- 按 `Cmd + R` 运行应用

## 开发进度

- [x] 项目框架搭建
- [ ] 第一阶段：视频上传和播放
- [ ] 第二阶段：语音识别和单词提取
- [ ] 第三阶段：单词表和生词本
- [ ] 第四阶段：闪卡和复习功能
- [ ] 第五阶段：笔记和发音功能
- [ ] 优化和测试

## 技术栈

- **UI 框架**: SwiftUI
- **数据存储**: Core Data
- **语音识别**: Speech Framework
- **文本转语音**: AVFoundation
- **视频处理**: AVKit, AVFoundation

## 许可证

MIT

## 联系方式

如有问题，请创建 Issue 或 PR。
