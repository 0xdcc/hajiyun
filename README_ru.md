<div align="center">

# 🌐 Hajiyun API (Хакиюн)
### Универсальный Высокопроизводительный Прокси-Шлюз для LLM

**Надежная, сверхбыстрая инфраструктура искусственного интеллекта для разработчиков, автономных агентов и SillyTavern**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Официальный сайт](https://img.shields.io/badge/Веб--сайт-hajiyun.top-3b82f6)](https://hajiyun.top)
[![Base URL](https://img.shields.io/badge/Base_URL-https%3A%2F%2Fhajiyun.top%2Fv1-10b981)](https://hajiyun.top/v1)
[![Статус мониторинга](https://img.shields.io/badge/Статус-Relay%20Pulse%20Online-green)](https://hajiyun.top:8443)
[![OpenAI Compatible](https://img.shields.io/badge/Протокол-OpenAI%20Compatible-orange)](https://platform.openai.com/docs/api-reference)
[![Автор](https://img.shields.io/badge/Автор-@0xdcc-black?logo=x)](https://x.com/0xdcc)

</div>

<div align="center">

[English](./README.md) • [简体中文](./README_zh.md) • [繁體中文](./README_zh-tw.md) • [Русский](./README_ru.md) • [日本語](./README_ja.md) • [Tiếng Việt](./README_vi.md) • [Français](./README_fr.md)

</div>

---


## 📌 О проекте

**Hajiyun API (https://hajiyun.top)** — это универсальный корпоративный прокси-шлюз для нейросетей, разработанный для разработчиков ПО, автономных кодинг-агентов (Cursor, Claude Code, Aider), приложений на Python/Node.js, чат-клиентов (Chatbox, NextChat) и ролевых платформ (SillyTavern).

Платформа обеспечивает прямой, нефильтрованный доступ к ведущим мировым моделям без блокировок, цензуры и сбоев.

---

## 🌟 Ключевые преимущества

- 🛡️ **100% Без цензуры и подмены промптов**: Мы никогда не модифицируем ваши системные инструкции и не вставляем рекламу.
- ⚡ **Миллисекундный отклик (TTFT)**: Собственные выделенные пулы резидентных прокси и интеллектуальная балансировка нагрузки.
- 🔓 **Отключение цензуры (`BLOCK_NONE`)**: Идеально подходит для SillyTavern, сложного сторителлинга и бенчмарков.
- 🔄 **Полная совместимость со стандартом OpenAI**: Один URL (`https://hajiyun.top/v1`) для сотен программ и библиотек.
- 💎 **Оплата криптовалютой и честный тариф**: Поддержка пополнения USDT (TRC-20, Polygon) и ваучеров, оплата строго по факту расхода токенов.
- 📊 **Мониторинг 24/7**: Открытый статус-дашборд [Relay Pulse](https://hajiyun.top:8443).

---

## 🧠 Доступные модели

- **Google**: `gemini-3.8-flash-high` (сверхбыстрый, огромное контекстное окно), `gemini-3.1-pro-preview`
- **Anthropic**: `claude-sonnet-4.6` (лучшая модель для написания кода), `claude-opus-4.6` (глубокий анализ и художественный текст)
- **OpenAI**: `gpt-4o`, `o1`, `o3-mini`
- **DeepSeek**: `deepseek-chat` (V3), `deepseek-reasoner` (R1)

---

## 🍷 Инструкция для SillyTavern (Таверны)

1. Откройте SillyTavern -> **Настройки API** (значок вилки/штекера).
2. Выберите **API**: `Chat Completion`, **Источник (Source)**: `OpenAI`.
3. В поле **Custom Endpoint** вставьте: `https://hajiyun.top/v1`.
4. Введите API-ключ `sk-...` из личного кабинета Hajiyun.
5. Нажмите **Connect** и выберите модель `gemini-3.8-flash-high` или `claude-sonnet-4.6`.
