<div align="center">

# 🌐 Hajiyun API
### Cổng Chuyển Tiếp & Tổng Hợp API LLM Đa Năng

**Hạ tầng AI tin cậy, chuẩn hóa cho Phát triển phần mềm, Dịch thuật, Tích hợp ứng dụng và Quy trình AI**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Trang chủ](https://img.shields.io/badge/Website-hajiyun.top-3b82f6)](https://hajiyun.top)
[![Base URL](https://img.shields.io/badge/Base_URL-https%3A%2F%2Fhajiyun.top%2Fv1-10b981)](https://hajiyun.top/v1)
[![OpenAI Compatible](https://img.shields.io/badge/Protocol-OpenAI%20Chat%20Completions-orange)](https://platform.openai.com/docs/api-reference/chat)
[![Tác giả](https://img.shields.io/badge/Author-@0xdcc-black?logo=x)](https://x.com/0xdcc)

[English](./README.md) • [简体中文](./README_zh.md) • [繁體中文](./README_zh-tw.md) • [Русский](./README_ru.md) • [日本語](./README_ja.md) • [Tiếng Việt](./README_vi.md) • [Français](./README_fr.md)

</div>

---

## 📌 Tổng quan

**Hajiyun API (https://hajiyun.top)** là nền tảng cổng chuyển tiếp và tích hợp API LLM dành cho các nhà phát triển và người dùng toàn cầu. Dịch vụ cung cấp giao thức tương thích định dạng OpenAI Chat Completions với khả năng truyền phát trực tiếp (streaming) và theo dõi mức sử dụng minh bạch.

Hỗ trợ các công cụ, ứng dụng và quy trình làm việc cho phép cấu hình Base URL tùy chỉnh và định dạng Chat Completions. Khả năng tương thích và tính năng cụ thể phụ thuộc vào từng ứng dụng và cần được kiểm thử thực tế:

- **Base URL API**: `https://hajiyun.top/v1`
- **Chat Completions Endpoint**: `https://hajiyun.top/v1/chat/completions`
- **Trang tiếng Việt**: `https://hajiyun.top/vi/`
- **Đặc điểm**: Xử lý dữ liệu theo điều khoản công bố, tương thích định dạng Chat Completions tiêu chuẩn.

---

## 🧠 Thông tin mô hình & Lưu ý

> **Lưu ý về danh sách mô hình**:
> Tình trạng khả dụng, mã định danh mô hình (Model ID), giá cước và hạn mức yêu cầu được cập nhật động trong bảng điều khiển. Vui lòng đăng nhập vào [Hajiyun Console](https://hajiyun.top) để lấy danh sách mô hình chính xác nhất.

Các dòng mô hình tương thích Chat Completions chính:
- **Anthropic Claude**: Kiểm tra danh sách phiên bản thực tế trong bảng điều khiển.
- **Google Gemini**: Xử lý ngữ cảnh dài và đa phương thức.
- **OpenAI**: Mô hình lý luận và đối thoại thông dụng.
- **DeepSeek**: Mô hình mã nguồn mở hiệu năng cao.

---

## 💻 Ví dụ tích hợp (cURL)

```bash
curl https://hajiyun.top/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ***" \
  -d '{
    "model": "YOUR_MODEL_ID_FROM_CONSOLE",
    "messages": [
      {"role": "user", "content": "Xin chào Hajiyun!"}
    ],
    "stream": true
  }'
```

### Cấu hình ứng dụng hỗ trợ Custom Base URL
Dành cho các công cụ và ứng dụng hỗ trợ cấu hình Base URL:
- **Base URL**: `https://hajiyun.top/v1`
- **API Key**: Khóa API tạo từ bảng điều khiển
- **Model ID**: Mã mô hình hợp lệ trong bảng điều khiển
*Lưu ý: Tính tương thích chi tiết cần được kiểm thử theo từng ứng dụng.*

---

## ❓ Câu hỏi thường gặp (FAQ)

- **Dữ liệu yêu cầu và prompt được xử lý như thế nào?** Yêu cầu được xử lý và chuyển tiếp theo đúng điều khoản dịch vụ và chính sách bảo mật đã công bố, với kết nối mã hóa TLS.
- **Có tương thích toàn bộ API của OpenAI không?** Trọng tâm hỗ trợ là định dạng **OpenAI Chat Completions**. Các chức năng chuyên biệt khác cần được kiểm tra thực tế theo từng mô hình.
- **Có cam kết không gặp lỗi 429 hay SLA cố định không?** Là dịch vụ cổng trung gian, không thể đảm bảo tuyệt đối không gặp giới hạn tần suất từ hệ thống gốc. Khuyến nghị cấu hình retry hợp lý trong ứng dụng.
- **Đây có phải là dịch vụ chính thức của Google hay OpenAI không?** Không. Hajiyun là cổng API độc lập của bên thứ ba, không đại diện cho sự chứng thực hay kiểm chuẩn chính thức từ Google hoặc OpenAI.

---

## 📄 Giấy phép

- **Giấy phép**: MIT License. Xem chi tiết tại [LICENSE](./LICENSE).
- **Người duy trì**: [@0xdcc](https://x.com/0xdcc)
- **Trang chủ**: [https://hajiyun.top](https://hajiyun.top)
