<div align="center">

# 🌐 Hajiyun API (哈基云)
### Universal LLM API Gateway & Relay Platform

**Reliable, Unified API Infrastructure for Software Development, Translation, Application Integration, and AI Workflows**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Official Site](https://img.shields.io/badge/Website-hajiyun.top-3b82f6)](https://hajiyun.top)
[![Base URL](https://img.shields.io/badge/Base_URL-https%3A%2F%2Fhajiyun.top%2Fv1-10b981)](https://hajiyun.top/v1)
[![OpenAI Compatible](https://img.shields.io/badge/Protocol-OpenAI%20Chat%20Completions-orange)](https://platform.openai.com/docs/api-reference/chat)
[![Maintainer](https://img.shields.io/badge/Maintainer-@0xdcc-black?logo=x)](https://x.com/0xdcc)

[English](./README.md) • [简体中文](./README_zh.md) • [繁體中文](./README_zh-tw.md) • [Русский](./README_ru.md) • [日本語](./README_ja.md) • [Tiếng Việt](./README_vi.md) • [Français](./README_fr.md)

</div>

---

## 📌 Overview

**Hajiyun API (https://hajiyun.top)** is a universal LLM API relay and gateway platform designed for developers and global users. It provides a standardized OpenAI Chat Completions compatible endpoint with native streaming and transparent token metering.

The platform is designed to connect with clients and workflows supporting custom OpenAI Base URLs and Chat Completions (such as coding assistants, SDK integrations, desktop chat tools, and roleplay apps). Actual compatibility and feature support depend on client implementations and should be verified via testing.

---

## 🌟 Key Features

- 🛡️ **Transparent Forwarding**: Requests are forwarded per published service and privacy policies without arbitrary manipulation.
- ⚡ **Optimized Routing & Streaming**: Direct SSE (Server-Sent Events) streaming architecture for responsive conversational flow.
- 🔄 **OpenAI Chat Completions Compatible**: Standard `/v1/chat/completions` schema works across developer frameworks and compatible LLM clients.
- 💎 **Transparent Token Accounting**: Usage and rates are tracked directly in USD; exact live pricing and quotas are displayed in the user console.

---

## 🚀 Quick Access & Endpoints

| Resource | Address | Description |
| :--- | :--- | :--- |
| **Official Portal** | [https://hajiyun.top](https://hajiyun.top) | Web console, model catalog & token management |
| **API Base URL** | `https://hajiyun.top/v1` | Standard OpenAI Chat Completions base endpoint |
| **Chat Completions Endpoint** | `https://hajiyun.top/v1/chat/completions` | Full endpoint path for clients requiring direct URL |
| **Multilingual Portals** | `/en/`, `/ru/`, `/ja/`, `/zh-tw/`, `/zh/`, `/vi/`, `/fr/` | Native localized landing pages |
| **AI Crawler Spec** | [https://hajiyun.top/llms.txt](https://hajiyun.top/llms.txt) | LLM plain text specification (GEO standard) |

---

## 🧠 Supported Models & Availability

> **Notice on Model Availability**:
> Specific model availability, active model identifiers, pricing per million tokens, and rate limits are dynamically maintained. Always refer to your active [Hajiyun Console](https://hajiyun.top) after logging in for the authoritative, real-time list of available models.

The gateway routes requests across major foundation model families supporting the Chat Completions format:
- **Anthropic Claude Series**: (Check console for currently active models)
- **Google Gemini Series**: High-throughput and multimodal reasoning models
- **OpenAI Series**: General reasoning and conversation models
- **DeepSeek Series**: High-efficiency reasoning and open-weights architecture models

---

## 💻 Integration Guides

### 1. cURL
```bash
curl https://hajiyun.top/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer sk-YOUR_HAJIYUN_API_KEY" \
  -d '{
    "model": "YOUR_MODEL_ID_FROM_CONSOLE",
    "messages": [
      {"role": "user", "content": "Explain quantum entanglement in 2 sentences."}
    ],
    "temperature": 0.7
  }'
```

### 2. Python (Official `openai` SDK)
```python
from openai import OpenAI
import os

client = OpenAI(
    api_key=os.getenv("HAJIYUN_API_KEY", "sk-YOUR_HAJIYUN_API_KEY"),
    base_url="https://hajiyun.top/v1"
)

response = client.chat.completions.create(
    model="YOUR_MODEL_ID_FROM_CONSOLE",  # e.g., verified active model ID
    messages=[
        {"role": "system", "content": "You are an expert software architect."},
        {"role": "user", "content": "Write an optimized LRU cache in Python."}
    ],
    stream=True
)

for chunk in response:
    content = chunk.choices[0].delta.content or ""
    print(content, end="", flush=True)
```

### 3. TypeScript / Node.js
```typescript
import OpenAI from "openai";

const openai = new OpenAI({
  apiKey: process.env.HAJIYUN_API_KEY || "sk-YOUR_HAJIYUN_API_KEY",
  baseURL: "https://hajiyun.top/v1",
});

async function main() {
  const completion = await openai.chat.completions.create({
    model: "YOUR_MODEL_ID_FROM_CONSOLE",
    messages: [{ role: "user", content: "Hello from Hajiyun!" }],
  });
  console.log(completion.choices[0].message.content);
}

main();
```

### 4. Compatible Clients & Tools (Supporting Custom Base URL)
For developer tools, IDE extensions, chat UIs, and workflow agents supporting custom OpenAI Base URLs:
- **Base URL**: `https://hajiyun.top/v1`
- **API Key**: Generated `sk-...` from Hajiyun console
- **Model ID**: Enter the exact model ID verified in your Hajiyun console
*Note: Compatibility depends on specific client features and protocol compliance; users should conduct testing for their specific use cases.*

---

## ❓ Frequently Asked Questions (FAQ)

#### Q1: How does Hajiyun handle request data and prompts?
Requests are processed and forwarded in accordance with published terms of service and privacy policies. Data transmission uses TLS encryption.

#### Q2: Does Hajiyun support all OpenAI API endpoints?
The primary protocol supported is **OpenAI Chat Completions** (`/v1/chat/completions`). Specialized endpoints (such as Realtime Audio, Assistants API, Fine-tuning, or native file management) are subject to upstream model capabilities and should be tested individually.

#### Q3: Are zero rate limits (429) or fixed SLAs guaranteed?
No third-party gateway can promise zero rate limits or 100% uninterrupted uptime. Real-world latency and availability depend on upstream cluster load, token concurrency, network stability, and request length. Hajiyun monitors health proactively and routes traffic to maintain stability.

#### Q4: Is Hajiyun an official service of Google or OpenAI?
No. Hajiyun is an independent third-party API gateway and relay service. Mentions of model families are for compatibility and identification purposes only and do not imply official affiliation, endorsement, or benchmark certification by Google, OpenAI, or Anthropic.

---

## 📄 License & Community

- **License**: MIT License. See [LICENSE](./LICENSE) for details.
- **Maintainer**: [@0xdcc](https://x.com/0xdcc)
- **Website**: [https://hajiyun.top](https://hajiyun.top)


## Multilingual practical guides

[Japanese, French and Vietnamese setup and troubleshooting guides](docs/notebooklm-guides.md), prepared by the Hajiyun team with NotebookLM. These are operator-provided guides, not independent benchmarks or a Google endorsement.
