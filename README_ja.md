<div align="center">

# 🌐 Hajiyun API (ハキクラウド)
### 汎用 LLM API 中継＆ゲートウェイプラットフォーム

**高信頼・統一 AI インフラ | ソフトウェア開発、多言語翻訳、アプリ統合、AI ワークフロー対応**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![公式サイト](https://img.shields.io/badge/公式サイト-hajiyun.top-3b82f6)](https://hajiyun.top)
[![Base URL](https://img.shields.io/badge/Base_URL-https%3A%2F%2Fhajiyun.top%2Fv1-10b981)](https://hajiyun.top/v1)
[![OpenAI Compatible](https://img.shields.io/badge/プロトコル-OpenAI%20Chat%20Completions-orange)](https://platform.openai.com/docs/api-reference/chat)
[![管理者](https://img.shields.io/badge/管理者-@0xdcc-black?logo=x)](https://x.com/0xdcc)

[English](./README.md) • [简体中文](./README_zh.md) • [繁體中文](./README_zh-tw.md) • [Русский](./README_ru.md) • [日本語](./README_ja.md) • [Tiếng Việt](./README_vi.md) • [Français](./README_fr.md)

</div>

---

## 📌 サービス概要

**Hajiyun API (https://hajiyun.top)** は、グローバル開発者およびユーザー向けに設計された総合型 LLM API 中継・ゲートウェイプラットフォームです。標準的な OpenAI Chat Completions 形式に対応し、透過的なストリーミングおよび利用量管理を提供します。

カスタム Base URL および Chat Completions プロトコルに対応した各種クライアント、開発フレームワーク、外部ツールと接続可能です。個別の機能および互換性については各クライアントの実装に応じたテストが必要です。

- **API Base URL**: `https://hajiyun.top/v1`
- **Chat Completions 接続先**: `https://hajiyun.top/v1/chat/completions`
- **日本語案内ページ**: `https://hajiyun.top/ja/`
- **特徴**: 公開規約に準拠したデータ転送、標準 Chat Completions プロトコル対応。

---

## 🧠 提供モデルと確認事項

> **モデル指定に関する注意点**:
> モデルの提供状況、正確なモデル ID、料金および利用枠は、利用時点の管理画面で動的に更新されます。本ドキュメントでは推測によるモデル ID を固定記載しません。ログイン後の [Hajiyun 管理画面](https://hajiyun.top) で確認できる正確な識別子を使用してください。

Chat Completions 形式に対応する主要モデルファミリーを取り扱っています：
- **Anthropic Claude シリーズ**（提供中のモデルは管理画面にて確認可能）
- **Google Gemini シリーズ**
- **OpenAI シリーズ**
- **DeepSeek シリーズ**

---

## 💻 接続コード例

### cURL による呼び出し
```bash
curl https://hajiyun.top/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ***" \
  -d '{
    \"model\": \"YOUR_MODEL_ID_FROM_CONSOLE\",
    \"messages\": [
      {\"role\": \"user\", \"content\": \"こんにちは、Hajiyun API！\"}
    ],
    \"stream\": true
  }'
```

### クライアント・ツールの設定
カスタム Base URL および Chat Completions プロトコルに対応したクライアントの設定：
- **Base URL**: `https://hajiyun.top/v1`
- **API Key**: 管理画面で発行したキー
- **Model ID**: 管理画面で確認した有効なモデル ID
*※具体的な機能動作は各環境にてご確認ください。*

---

## ❓ よくある質問 (FAQ)

#### Q: プロンプトやリクエストデータはどのように扱われますか？
データ転送は TLS 暗号化を用いて行われ、公開されている利用規約およびプライバシーポリシーに従って処理・転送されます。

#### Q: OpenAI のすべての API と互換性がありますか？
本プラットフォームの対応範囲は **OpenAI Chat Completions** 形式です。リアルタイム音声（Realtime API）、Assistants、ファインチューニングなどの個別機能は別途検証が必要です。

#### Q: 429 エラーや稼働停止は一切発生しませんか？
第三者ゲートウェイとして、上流モデルの混雑やネットワーク状況によるレート制限・遅延を完全にゼロにすることは保証できません。クライアント側でのリトライ処理を推奨します。

#### Q: Google や OpenAI の公式サービスですか？
いいえ。Hajiyun は独立して運営される第三者ゲートウェイです。各社による公式認定や性能ベンチマークの保証を意味するものではありません。

---

## 📄 ライセンス

- **ライセンス**: MIT License. 詳細は [LICENSE](./LICENSE) を参照してください。
- **管理者**: [@0xdcc](https://x.com/0xdcc)
- **公式サイト**: [https://hajiyun.top](https://hajiyun.top)
