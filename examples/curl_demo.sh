#!/usr/bin/env bash
# 哈基云 (Hajiyun) - cURL 快速调用示例
# 官网: https://hajiyun.top
# 说明: 请在控制台确认有效 API Key 与模型 ID 后执行

API_KEY="${HAJIYUN_API_KEY:-sk-your-hajiyun-api-key}"
BASE_URL="${HAJIYUN_BASE_URL:-https://hajiyun.top/v1}"
MODEL_ID="${HAJIYUN_MODEL_ID:-your-model-id-from-console}"

echo ">> 发起对话补全 (流式输出)..."
curl -N -s "${BASE_URL}/chat/completions" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ***" \
  -d "{
    \"model\": \"${MODEL_ID}\",
    \"messages\": [
      {\"role\": \"user\", \"content\": \"你好，哈基云！\"}
    ],
    \"stream\": true
  }"
echo -e "\n\n[Done]"
