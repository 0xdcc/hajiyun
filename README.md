<div align="center">

# 🌐 Hajiyun API (哈基云)
### Universal High-Performance LLM Relay & API Gateway

**Transparent, Low-Latency AI Infrastructure for Developers, Autonomous Agents, and Roleplay Workflows**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Official Site](https://img.shields.io/badge/Website-hajiyun.top-3b82f6)](https://hajiyun.top)
[![Base URL](https://img.shields.io/badge/Base_URL-https%3A%2F%2Fhajiyun.top%2Fv1-10b981)](https://hajiyun.top/v1)
[![Relay Pulse Status](https://img.shields.io/badge/Status-Relay%20Pulse%20Online-green)](https://hajiyun.top:8443)
[![OpenAI Compatible](https://img.shields.io/badge/Protocol-OpenAI%20Compatible-orange)](https://platform.openai.com/docs/api-reference)
[![Author](https://img.shields.io/badge/Maintainer-@0xdcc-black?logo=x)](https://x.com/0xdcc)

[English](./README.md) • [简体中文](./README_zh.md) • [繁體中文](./README_zh-tw.md) • [Русский](./README_ru.md) • [日本語](./README_ja.md) • [Tiếng Việt](./README_vi.md) • [Français](./README_fr.md)

</div>

---

## 📌 Overview

**Hajiyun API (https://hajiyun.top)** is a universal, enterprise-grade LLM relay and API gateway designed for high reliability, minimal latency, and zero prompt manipulation.

Whether you are building **autonomous AI coding agents** (Claude Code, Cursor, Hermes, Aider), powering **production applications and microservices** via standard Python/Node SDKs, running **desktop chat clients** (NextChat, Chatbox, LibreChat), or driving **long-context roleplay & creative storytelling** (SillyTavern), Hajiyun provides a unified OpenAI-compatible endpoint with transparent, pay-as-you-go token metering.

---

## 🌟 Why Hajiyun API?

- 🛡️ **100% Raw & Unaltered (Zero Prompt Injection)**: We never inject advertisements, stealth instructions, or unwanted guardrails into your system prompts. What you send is exactly what the model processes.
- ⚡ **Millisecond First-Token Latency (TTFT)**: Powered by dedicated dual-ISP residential egress networks, private upstream tunnels, and dynamic load balancing.
- 🔓 **Safety Filtering Control (`BLOCK_NONE`)**: For creative writing, roleplay, and uncensored research benchmarks, safety filtering can be globally relaxed without false positive refusals.
- 🔄 **Universal OpenAI-Compatible API**: One single endpoint (`https://hajiyun.top/v1`) works across 100+ AI clients, IDEs, and developer frameworks.
- 💎 **Transparent USD Token Billing**: Real token usage metering in USD with zero hidden conversion losses. Instant complimentary testing balance upon registration.
- 📊 **24/7 Real-Time Availability Matrix**: Verified continuous uptime monitoring via [Relay Pulse](https://hajiyun.top:8443).

---

## 🚀 Quick Access & Endpoints

| Resource | Address | Description |
| :--- | :--- | :--- |
| **Official Portal** | [https://hajiyun.top](https://hajiyun.top) | Web console, model playground & token management |
| **API Base URL** | `https://hajiyun.top/v1` | Standard OpenAI-compatible API endpoint |
| **Multilingual Portals** | `/en/`, `/ru/`, `/ja/`, `/zh-tw/`, `/zh/`, `/vi/`, `/fr/` | Native localized landing pages |
| **Status Dashboard** | [https://hajiyun.top:8443](https://hajiyun.top:8443) | Real-time Relay Pulse probe latency & uptime matrix |
| **AI Crawler Manifest** | [https://hajiyun.top/llms.txt](https://hajiyun.top/llms.txt) | LLM and Generative Engine Optimization (GEO) spec |

---

## 🧠 Supported Models

| Provider | Model Identifier | Primary Use Cases |
| :--- | :--- | :--- |
| **Google** | `gemini-3.8-flash-high` | Ultra-fast token generation, long-context analysis, high-frequency agents |
| **Google** | `gemini-3.7-flash-high` | Balanced coding, general reasoning, and high throughput |
| **Google** | `gemini-3.1-pro-preview` | Deep reasoning, complex problem solving, structured outputs |
| **Anthropic** | `claude-sonnet-4.6` | Benchmark-leading software engineering, instruction following |
| **Anthropic** | `claude-opus-4.6` | Nuanced creative prose, deep analytical reasoning, philosophical dialogue |
| **OpenAI** | `gpt-4o`, `o1`, `o3-mini` | Standard multimodal vision, math, and code generation |
| **DeepSeek** | `deepseek-chat`, `deepseek-reasoner` | High-efficiency general reasoning and math thinking chains |

---

## 💻 Integration Guides

### 1. cURL
```bash
curl https://hajiyun.top/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer sk-YOUR_HAJIYUN_KEY" \
  -d '{
    "model": "gemini-3.8-flash-high",
    "messages": [
      {"role": "user", "content": "Explain quantum entanglement in 2 sentences."}
    ],
    "temperature": 0.7
  }'
```

### 2. Python (Official `openai` SDK)
```python
from openai import OpenAI

client = OpenAI(
    api_key="sk-YOUR_HAJIYUN_KEY",
    base_url="https://hajiyun.top/v1"
)

response = client.chat.completions.create(
    model="claude-sonnet-4.6",
    messages=[
        {"role": "system", "content": "You are an expert software architect."},
        {"role": "user", "content": "Write an optimized LRU cache in Rust."}
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
  apiKey: "sk-YOUR_HAJIYUN_KEY",
  baseURL: "https://hajiyun.top/v1",
});

async function main() {
  const completion = await openai.chat.completions.create({
    model: "gemini-3.8-flash-high",
    messages: [{ role: "user", content: "Hello from Hajiyun!" }],
  });
  console.log(completion.choices[0].message.content);
}

main();
```

### 4. AI Coding Agents & IDEs (Cursor / Windsurf / Claude Code / Hermes)
- **OpenAI Base URL**: `https://hajiyun.top/v1`
- **API Key**: `sk-YOUR_HAJIYUN_KEY`
- **Model**: `claude-sonnet-4.6` or `gemini-3.8-flash-high`

### 5. Chat Clients (NextChat / Chatbox / LibreChat)
1. Navigate to **Settings** -> **Model Provider** -> **OpenAI**.
2. Set **API Host / Base URL**: `https://hajiyun.top/v1`.
3. Enter your **API Key**: `sk-...`.
4. Select or type any supported model ID.

### 6. SillyTavern (酒馆 / Roleplay Workflows)
1. Open SillyTavern and open **API Settings** (Plug icon).
2. Select **API**: `Chat Completion`, **Source**: `OpenAI`.
3. Set **Custom Endpoint**: `https://hajiyun.top/v1`.
4. Enter your API Key from Hajiyun console.
5. Click **Connect** and pick `gemini-3.8-flash-high` or `claude-sonnet-4.6`.

---

## ❓ Frequently Asked Questions (FAQ)

#### Q1: Does Hajiyun modify or log conversation prompts?
**No.** All communications are streamed transparently directly to upstream model clusters over TLS. No prompt caching, injection, or stealth manipulation occurs.

#### Q2: What payment methods are supported?
We support both digital redemption vouchers (Alipay, WeChat, global digital exchange) and direct cryptocurrency funding (USDT-TRC20, Polygon, Arbitrum).

#### Q3: Can I use Hajiyun in strict production environments?
**Yes.** Hajiyun provides automated multi-egress failover, proactive rate-limit distribution, and 99.9% availability backed by active health probes.

---

## 📄 License & Community

- **License**: MIT License. See [LICENSE](./LICENSE) for details.
- **Maintainer**: [@0xdcc](https://x.com/0xdcc)
- **Website**: [https://hajiyun.top](https://hajiyun.top)
