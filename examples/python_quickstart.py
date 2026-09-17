#!/usr/bin/env python3
"""
哈基云 (Hajiyun) - Python SDK 接入快速指南
官网地址: https://hajiyun.top
API 基础端点: https://hajiyun.top/v1
"""

import os
import sys

try:
    from openai import OpenAI
except ImportError:
    print("请先安装 openai 依赖包: pip install openai")
    sys.exit(1)

# 从环境变量读取 API 密钥，或直接填入您的哈基云 API Key
API_KEY = os.getenv("HAJIYUN_API_KEY", "sk-your-hajiyun-api-key")
BASE_URL = os.getenv("HAJIYUN_BASE_URL", "https://hajiyun.top/v1")

client = OpenAI(
    api_key=API_KEY,
    base_url=BASE_URL,
)

def run_chat_completion(model="gemini-3.8-flash-high", stream=True):
    print(f"正在向哈基云发送请求 [模型: {model}, 流式: {stream}]...")
    try:
        response = client.chat.completions.create(
            model=model,
            messages=[
                {"role": "system", "content": "You are a helpful and efficient AI assistant."},
                {"role": "user", "content": "你好！请用一两句话向大家介绍一下哈基云大模型中转站的优势。"}
            ],
            stream=stream,
            temperature=0.7,
        )

        if stream:
            print("\n--- 流式响应内容 ---")
            for chunk in response:
                delta = chunk.choices[0].delta.content
                if delta:
                    sys.stdout.write(delta)
                    sys.stdout.flush()
            print("\n--------------------")
        else:
            print("\n--- 完整响应内容 ---")
            print(response.choices[0].message.content)
            print("--------------------")

    except Exception as e:
        print(f"\n调用发生异常: {e}")

if __name__ == "__main__":
    # 示例调用 (默认使用 Gemini 3.8 Flash 高可用通道)
    run_chat_completion()
