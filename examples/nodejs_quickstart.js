/**
 * 哈基云 (Hajiyun) - Node.js SDK 快速接入指南
 * 官网: https://hajiyun.top
 */

import OpenAI from "openai";

const apiKey = process.env.HAJIYUN_API_KEY || "sk-you...-key";
const baseURL = process.env.HAJIYUN_BASE_URL || "https://hajiyun.top/v1";
// 请在控制台确认当前可用的确切模型 ID
const modelId = process.env.HAJIYUN_MODEL_ID || "your-model-id-from-console";

const client = new OpenAI({
  apiKey: apiKey,
  baseURL: baseURL,
});

async function main() {
  console.log("正在请求哈基云大模型接口...");

  const stream = await client.chat.completions.create({
    model: modelId,
    messages: [
      { role: "system", content: "You are a helpful assistant." },
      { role: "user", content: "你好！请用一句话介绍哈基云。" }
    ],
    stream: true,
  });

  for await (const chunk of stream) {
    process.stdout.write(chunk.choices[0]?.delta?.content || "");
  }
  console.log("\n[完成]");
}

main().catch(console.error);
