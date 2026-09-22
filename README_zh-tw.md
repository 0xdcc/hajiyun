<div align="center">

# 🌐 哈基雲 (Hajiyun API)
### 通用大模型 API 聚合網關與轉發平台

**可靠、統一的通用 AI 基礎設施 | 面向軟體開發、多語翻譯、應用整合與 AI 工作流**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![官網](https://img.shields.io/badge/官網-hajiyun.top-3b82f6)](https://hajiyun.top)
[![API端點](https://img.shields.io/badge/API端點-https%3A%2F%2Fhajiyun.top%2Fv1-10b981)](https://hajiyun.top/v1)
[![兼容 OpenAI](https://img.shields.io/badge/協議-OpenAI%20Chat%20Completions-orange)](https://platform.openai.com/docs/api-reference/chat)
[![維護者](https://img.shields.io/badge/維護者-@0xdcc-black?logo=x)](https://x.com/0xdcc)

[English](./README.md) • [简体中文](./README_zh.md) • [繁體中文](./README_zh-tw.md) • [Русский](./README_ru.md) • [日本語](./README_ja.md) • [Tiếng Việt](./README_vi.md) • [Français](./README_fr.md)

</div>

---

## 📌 平台簡介

**哈基雲 (https://hajiyun.top)** 是面向全球開發者與使用者的通用大模型 API 聚合與中轉轉發平台。平台提供標準 OpenAI Chat Completions 協議相容介面，具備原生串流傳輸與透明用量計費能力。

平台支援各類支援自訂 Base URL 及 Chat Completions 協議的客戶端、開發框架與應用工具。具體相容性與功能須視客戶端實現自行測試。

- **API Base URL**: `https://hajiyun.top/v1`
- **Chat Completions 完整路徑**: `https://hajiyun.top/v1/chat/completions`
- **服務說明**: 數據傳輸依公布條款執行，支援標準 Chat Completions 協議。

---

## 🧠 支援模型與狀態說明

> **模型支援提醒**：
> 平台提供的模型清單、確切模型 ID、定價與頻率限制動態更新。請一律以登入 [哈基雲官方控制台](https://hajiyun.top) 後查看到的即時資訊為準。請勿任意猜測模型名稱。

主要涵蓋支援 Chat Completions 規範的主流模型家族：
- **Anthropic Claude 系列**（具體版本以控制台即時顯示為準）
- **Google Gemini 系列**
- **OpenAI 系列**
- **DeepSeek 系列**

---

## 💻 快速接入示例

### cURL 示例
```bash
curl https://hajiyun.top/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ***" \
  -d '{
    "model": "YOUR_MODEL_ID_FROM_CONSOLE",
    "messages": [
      {"role": "user", "content": "你好，哈基雲！"}
    ],
    "stream": true
  }'
```

### 工具與客戶端配置
適用於支援自訂 Base URL 及 Chat Completions 協議的客戶端：
- **Base URL**: `https://hajiyun.top/v1`
- **API Key**: 填入控制台金鑰
- **Model ID**: 填入控制台有效模型識別碼
*註：具體功能須自行測試確認。*

---

## ❓ 常見問題與澄清

- **是否相容所有 OpenAI API？** 本平台主要專注於 OpenAI Chat Completions 協議。語音即時、Assistants 等進階介面需視模型單獨測試。
- **是否有 429 或 SLA 零中斷保證？** 任何第三方服務均受上游負載與網路波動影響，無法保證零限流或固定 SLA，建議於客戶端設定合理的超時與重試機制。
- **是否為 Google 或 OpenAI 官方服務？** 否，哈基雲為獨立營運的第三方轉發服務，非官方附屬服務，亦未獲官方基準測試認證。

---

## 📄 授權條款

- **授權協議**: MIT License. 詳見 [LICENSE](./LICENSE)。
- **維護者**: [@0xdcc](https://x.com/0xdcc)
- **官方網站**: [https://hajiyun.top](https://hajiyun.top)
