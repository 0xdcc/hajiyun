#!/usr/bin/env bash
# 哈基云 (Hajiyun) - cURL 快速调用示例
# 官网: https://hajiyun.top

API_KEY="${HAJIYUN_API_KEY:-sk-your-hajiyun-api-key}"
BASE_URL="${HAJIYUN_BASE_URL:-https://hajiyun.top/v1}"

echo ">> 1. 检查哈基云模型列表..."
curl -s "${BASE_URL}/models" \
  -H "Authorization: Bearer ${API_KEY}" | head -n 30

echo -e "\n\n>> 2. 发起对话补全 (流式输出)..."
curl -N -s "${BASE_URL}/chat/completions" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${API_KEY}" \
  -d '{
    "model": "gemini-3.8-flash-high",
    "messages": [
      {"role": "user", "content": "你好，哈基云！"}
    ],
    "stream": true
  }'
echo -e "\n\n[Done]"
