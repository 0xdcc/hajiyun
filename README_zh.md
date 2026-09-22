<div align="center">

# 🌐 哈基云 (Hajiyun API)
### 通用高可用大模型 API 聚合分发与中转服务

**纯透明、低延迟的通用 AI 基础设施 | 专为开发者、自主 Agent、客户端与酒馆打造**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![官网](https://img.shields.io/badge/官网-hajiyun.top-3b82f6)](https://hajiyun.top)
[![API端点](https://img.shields.io/badge/API端点-https%3A%2F%2Fhajiyun.top%2Fv1-10b981)](https://hajiyun.top/v1)
[![Relay Pulse 状态](https://img.shields.io/badge/实时监控-Relay%20Pulse-green)](https://hajiyun.top:8443)
[![兼容 OpenAI](https://img.shields.io/badge/协议-OpenAI%20兼容-orange)](https://platform.openai.com/docs/api-reference)
[![作者](https://img.shields.io/badge/维护者-@0xdcc-black?logo=x)](https://x.com/0xdcc)

</div>

<div align="center">

[English](./README.md) • [简体中文](./README_zh.md) • [繁體中文](./README_zh-tw.md) • [Русский](./README_ru.md) • [日本語](./README_ja.md) • [Tiếng Việt](./README_vi.md) • [Français](./README_fr.md)

</div>

---


## 📌 平台概述

**哈基云 (https://hajiyun.top)** 是一个定位于企业级、高可靠、纯透明的综合性大模型 API 中转分发平台。

无论您是在开发 **自主 AI 编程 Agent**（Claude Code、Cursor、Hermes、Aider）、构建 **生产级后端业务与微服务**（Python / Node.js SDK、LangChain、LlamaIndex）、使用 **桌面或网页聊天客户端**（NextChat、Chatbox、LibreChat），还是用于 **长文本角色扮演与文学创作**（SillyTavern 酒馆），哈基云均提供标准 OpenAI 兼容接口，并按真实 Token 用量提供公开透明的 USD 计价。

---

## 🌟 核心优势

- 🛡️ **100% 纯透明转发（零 Prompt 篡改）**: 绝不擅自向用户请求注入广告、诱导词或额外系统预设，保证上下文完全真实。
- ⚡ **毫秒级首字延迟（TTFT）**: 基于海外双 ISP 独立原生住宅节点与智能动态负载调度，Gemini 3.8 Flash 与 Claude 4.6 极速响应。
- 🔓 **放宽安全过滤限制 (`BLOCK_NONE`)**: 支持长文本、复杂世界观设定及科研基准评测，告别误杀与拒答。
- 🔄 **全标准 OpenAI 兼容**: 统一接入端点 `https://hajiyun.top/v1`，开箱适配数百款市面主流客户端与 IDE。
- 💎 **透明真实计价**: 全平台统显真实 USD 计价，无虚高换算，注册即赠送免费测试额度。
- 📊 **24小时实时可用性监控**: 接入 [Relay Pulse](https://hajiyun.top:8443) 探针矩阵，状态分秒可查。

---

## 🚀 核心接入端点

| 资源 | 地址 | 描述 |
| :--- | :--- | :--- |
| **官方网站** | [https://hajiyun.top](https://hajiyun.top) | 控制台、模型广场、令牌管理 |
| **API Base URL** | `https://hajiyun.top/v1` | 标准 OpenAI 兼容接口地址 |
| **多语种门户** | `/zh/`, `/en/`, `/ru/`, `/ja/`, `/zh-tw/`, `/vi/`, `/fr/` | 各国母语专属落地页 |
| **实时监控大屏** | [https://hajiyun.top:8443](https://hajiyun.top:8443) | Relay Pulse 延迟心跳与可用率看板 |
| **AI 搜索规范** | [https://hajiyun.top/llms.txt](https://hajiyun.top/llms.txt) | 面向大模型搜索引擎的纯文本规范 (GEO) |

---

## 🧠 支持的核心模型

- **Google**: `gemini-3.8-flash-high`（极速首字、超长上下文）、`gemini-3.7-flash-high`、`gemini-3.1-pro-preview`（深度推理）
- **Anthropic**: `claude-sonnet-4.6`（代码与复杂指令遵循顶峰）、`claude-opus-4.6`（深度逻辑与长篇写作）
- **OpenAI**: `gpt-4o`、`o1`、`o3-mini`（多模态与数学代码通用）
- **DeepSeek**: `deepseek-chat` (V3)、`deepseek-reasoner` (R1)

---

## 💻 接入示例

### 1. Python 接入
```python
from openai import OpenAI

client = OpenAI(
    api_key="sk-YOUR_HAJIYUN_KEY",
    base_url="https://hajiyun.top/v1"
)

response = client.chat.completions.create(
    model="gemini-3.8-flash-high",
    messages=[{"role": "user", "content": "你好，请用一句话介绍你自己。"}],
    stream=True
)

for chunk in response:
    print(chunk.choices[0].delta.content or "", end="", flush=True)
```

### 2. IDE 与 Agent 工具（Cursor / Claude Code / Hermes / Windsurf）
- **Base URL**: `https://hajiyun.top/v1`
- **API Key**: 从哈基云控制台生成的 `sk-...`
- **模型**: `claude-sonnet-4.6` 或 `gemini-3.8-flash-high`

### 3. 客户端（Chatbox / NextChat）
- 设置中选择 **OpenAI** 接口提供商，填入 API 域名 `https://hajiyun.top/v1` 与密钥即可。

### 4. 酒馆 (SillyTavern)
- 接口选择 `Chat Completion` -> `OpenAI`，反代地址填 `https://hajiyun.top/v1`，连接即用。
