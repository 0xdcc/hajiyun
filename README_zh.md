<div align="center">

# 🌐 哈基云 (Hajiyun API)
### 通用大模型 API 聚合网关与中转平台

**可靠、统一的通用 AI 基础设施 | 面向软件开发、多语翻译、应用集成与 AI 工作流**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![官网](https://img.shields.io/badge/官网-hajiyun.top-3b82f6)](https://hajiyun.top)
[![API端点](https://img.shields.io/badge/API端点-https%3A%2F%2Fhajiyun.top%2Fv1-10b981)](https://hajiyun.top/v1)
[![兼容 OpenAI](https://img.shields.io/badge/协议-OpenAI%20Chat%20Completions-orange)](https://platform.openai.com/docs/api-reference/chat)
[![维护者](https://img.shields.io/badge/维护者-@0xdcc-black?logo=x)](https://x.com/0xdcc)

[English](./README.md) • [简体中文](./README_zh.md) • [繁體中文](./README_zh-tw.md) • [Русский](./README_ru.md) • [日本語](./README_ja.md) • [Tiếng Việt](./README_vi.md) • [Français](./README_fr.md)

</div>

---

## 📌 平台概述

**哈基云 (https://hajiyun.top)** 是面向全球开发者与用户的通用大模型 API 聚合与中转服务平台。系统提供标准 OpenAI Chat Completions 协议兼容接口，具备原生流式传输与透明用量计费能力。

平台支持各类支持自定义 Base URL 及 Chat Completions 协议的客户端、开发框架与应用工具（包括编程辅助工具、翻译工作流、桌面端应用及交互工作流）。具体功能与兼容性须视客户端实现自行测试。

---

## 🌟 核心特性

- 🛡️ **规范转发**：按公布的服务协议与隐私条款处理并转发请求，保障数据交互标准透明。
- ⚡ **低延迟流式响应**：采用原生 SSE（Server-Sent Events）流式传输链路，提升对话与生成任务的交互响应效率。
- 🔄 **OpenAI Chat Completions 兼容**：以标准的 `/v1/chat/completions` 数据格式对外提供服务，接入主流兼容框架与开发工具。
- 💎 **用量透明公开**：计费以真实 Token 消耗与实时费率为准，登录控制台即可清晰查询余额及详细消耗记录。

---

## 🚀 常用端点与资源

| 资源名称 | 访问地址 | 说明 |
| :--- | :--- | :--- |
| **官方控制台** | [https://hajiyun.top](https://hajiyun.top) | 账户注册、密钥管理、模型列表及用量查询 |
| **API Base URL** | `https://hajiyun.top/v1` | 标准 OpenAI 兼容基础端点 |
| **完整请求路径** | `https://hajiyun.top/v1/chat/completions` | 部分需填写完整 URL 的客户端使用 |
| **多语言门户** | `/en/`, `/ru/`, `/ja/`, `/zh-tw/`, `/zh/`, `/vi/`, `/fr/` | 本地化多语言站点 |
| **AI 抓取规范** | [https://hajiyun.top/llms.txt](https://hajiyun.top/llms.txt) | 面向大模型与搜索规范的纯文本索引 (GEO) |

---

## 🧠 支持模型说明

> **重要提示（模型以控制台为准）**：
> 平台提供的模型型号、具体模型 ID、费率及并发配额随上游供应动态维护。请始终以登录 [哈基云官方控制台](https://hajiyun.top) 后查看到的可用模型列表为准。请勿依据第三方示例或非官方文档猜测模型 ID。

平台主要支持兼容 Chat Completions 协议的主流模型家族：
- **Anthropic Claude 系列**：提供深度推理与代码编写能力（请在控制台查看当前可用型号）
- **Google Gemini 系列**：长上下文理解与多模态分析模型
- **OpenAI 系列**：通用对话与逻辑推理模型
- **DeepSeek 系列**：高性价比推理与开源体系模型

---

## 💻 接入示例指南

### 1. cURL
```bash
curl https://hajiyun.top/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer sk-YOUR_HAJIYUN_API_KEY" \
  -d '{
    "model": "YOUR_MODEL_ID_FROM_CONSOLE",
    "messages": [
      {"role": "user", "content": "你好，哈基云！"}
    ],
    "temperature": 0.7
  }'
```

### 2. Python SDK (`openai` 官方包)
```python
from openai import OpenAI
import os

client = OpenAI(
    api_key=os.getenv("HAJIYUN_API_KEY", "sk-YOUR_HAJIYUN_API_KEY"),
    base_url="https://hajiyun.top/v1"
)

response = client.chat.completions.create(
    model="YOUR_MODEL_ID_FROM_CONSOLE",
    messages=[
        {"role": "system", "content": "你是一位优秀的专业助手。"},
        {"role": "user", "content": "请用一句话介绍哈基云。"}
    ],
    stream=True
)

for chunk in response:
    content = chunk.choices[0].delta.content or ""
    print(content, end="", flush=True)
```

### 3. 支持自定义 Base URL 的客户端与工具
适用于支持自定义 OpenAI API Base URL 的各类开发工具、客户端及工作流：
- **Base URL**: `https://hajiyun.top/v1`
- **API Key**: 哈基云控制台生成的 `sk-...`
- **模型名称**: 填入控制台中实际核对有效的模型 ID
*注：具体功能与兼容性取决于各客户端自身实现，建议在具体使用场景中先行测试验证。*

---

## ❓ 常见问题 (FAQ)

#### Q1: 哈基云如何处理请求数据与 Prompt？
平台按公布的服务协议与隐私条款处理并转发数据，数据传输采用 TLS 加密保护。

#### Q2: 是否兼容 OpenAI 的全部 API 接口？
本指南与当前支持重点为 **OpenAI Chat Completions** 格式。音频实时对话 (Realtime API)、官方 Assistants 工具、微调或外部文件系统等未验证端点不在保证范围内，请按需单独测试。

#### Q3: 是否承诺零 429 报错或确定 SLA 可用性？
任何第三方网关均无法杜绝上游限流或绝对零中断。网络链路抖动、并发峰值与上游负载均可能引起响应延迟或重试。建议在业务层做好重试与超时保护。

#### Q4: 是否属于 Google 或 OpenAI 官方服务？
否。哈基云为第三方独立运营的 API 聚合中转服务。文档与界面提及模型仅作兼容性标识，不代表 Google、OpenAI、Anthropic 等机构的官方背书或认证。

---

## 📄 开源与协议

- **开源协议**: MIT License. 详见 [LICENSE](./LICENSE)。
- **维护者**: [@0xdcc](https://x.com/0xdcc)
- **官网**: [https://hajiyun.top](https://hajiyun.top)
