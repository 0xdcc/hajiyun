<div align="center">

# ☁️ 哈基云 (Hajiyun)

**透明高可用大模型 API 中转分发服务 | 专为酒馆、开发者与高频调用打造**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Website](https://img.shields.io/badge/Official%20Site-hajiyun.top-blue)](https://hajiyun.top)
[![Author](https://img.shields.io/badge/Author-@0xdcc-black?logo=x)](https://x.com/0xdcc)

[🌐 访问官网](https://hajiyun.top) • [📖 快速接入](#快速接入) • [🍷 酒馆配置](#酒馆-sillytavern-接入指南) • [💻 代码示例](#代码调用示例)

</div>

---

## 📌 什么是哈基云？

**哈基云 (Hajiyun)** 是一个专注高可用、纯透明、低延迟的大模型 API 中转分发站。

针对市面上许多中转平台“偷换降智模型、恶意篡改系统预设、首字延迟爆炸”等常见痛点，哈基云基于海外双 ISP 独立原生节点构建，提供 **100% 原生直连、不掺假、不改 Prompt、流式零缓冲** 的模型调用通道。

### 🌟 核心特色

1. **纯透明转发通道**: 绝不擅自向您的 Prompt 注入广告或篡改系统预设，保障上下文原汁原味。
2. **酒馆/跑团友好**: 安全过滤参数全局放宽至 `BLOCK_NONE`，长文本、复杂世界观与自由剧情不误杀。
3. **极速首字延迟**: 自建 CPA 多账号轮询调度池，Gemini 3.8 Flash 首字响应低至毫秒级。
4. **全标准 OpenAI 兼容**: 无缝接入所有支持自定义 API 端点的客户端与 SDK。
5. **透明计价**: 全站模型统显真实 USD 计价，新用户注册自带测试额度。

---

## 🚀 快速接入

- **官方网站**: [https://hajiyun.top](https://hajiyun.top)
- **API Base URL**: `https://hajiyun.top/v1`
- **支持模型**:
  - `gemini-3.8-flash-high` / `gemini-2.5-pro` (原生高速直连)
  - `claude-3-7-sonnet` / `claude-3-5-sonnet`
  - `gpt-4o` / `o1` / `o3-mini`
  - `deepseek-chat` / `deepseek-reasoner`

---

## 🍷 酒馆 (SillyTavern) 接入指南

哈基云专为 SillyTavern 酒馆玩家进行链路优化，配置仅需三步：

1. 打开 SillyTavern，进入顶部 **API 连接设置** (插头图标)。
2. 选择 **API**: `Chat Completion`，**接口类型 (Chat Completion Source)**: 选择 `OpenAI`。
3. 填入参数：
   - **反向代理 URL (Custom Endpoint)**: `https://hajiyun.top/v1`
   - **API Key**: 填入从 [哈基云控制台](https://hajiyun.top) 获取的令牌 (`sk-...`)
4. 点击 **连接 (Connect)**，并在模型列表中选择您需要的模型（推荐 `gemini-3.8-flash-high` 或 `claude-3-7-sonnet`）。

---

## 💻 代码调用示例

### 1. Python (OpenAI SDK)

```python
from openai import OpenAI

client = OpenAI(
    api_key="sk-your-hajiyun-api-key",
    base_url="https://hajiyun.top/v1"
)

response = client.chat.completions.create(
    model="gemini-3.8-flash-high",
    messages=[
        {"role": "user", "content": "你好，哈基云！"}
    ],
    stream=True
)

for chunk in response:
    content = chunk.choices[0].delta.content
    if content:
        print(content, end="", flush=True)
```

更多语言与脚本示例请参阅 [`examples/`](./examples/) 目录：
- [Python 完整范例](./examples/python_quickstart.py)
- [cURL 极简调用](./examples/curl_demo.sh)
- [Node.js / TypeScript 范例](./examples/nodejs_quickstart.js)

---

## 🛠️ 支持客户端

哈基云完全兼容以下客户端：
- **Web/桌面**: NextChat (ChatGPT-Next-Web), Chatbox, Cherry Studio, LobeChat
- **开发与插件**: Continue.dev, Cline, Cursor, Aider
- **角色扮演/酒馆**: SillyTavern, RisuAI

---

## 📄 开源协议与声明

本项目文档与示例代码遵循 [MIT 许可证](./LICENSE)。

- **作者 / Maintainer**: [0xdcc](https://github.com/0xdcc)
- **社交网络 (X / Twitter)**: [@0xdcc](https://x.com/0xdcc)
- **官网**: [hajiyun.top](https://hajiyun.top)
