# 🦞 File Organizer Skill for OpenClaw

> Biến mớ hỗn độn file/folder thành hệ thống khoa học, chuyên nghiệp chỉ với một câu lệnh.

![OpenClaw Skill](https://img.shields.io/badge/OpenClaw-Skill-blue?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)

`file-organizer-skill` là một công cụ mạnh mẽ dành cho OpenClaw, giúp tự động hóa việc sắp xếp, phân loại và chuẩn hóa cấu trúc thư mục (Dự án, Doanh nghiệp, Cá nhân) một cách thông minh và **an toàn tuyệt đối**.

## ✨ Tính năng nổi bật

-   **🔍 Phân tích & Phân loại:** Tự động quét và đề xuất cấu trúc folder tối ưu dựa trên nội dung thực tế.
-   **🛡️ An toàn dữ liệu (Zero Data Loss):** Cơ chế xác minh đếm file (Pre/Post check) đảm bảo không có bất kỳ file nào bị mất trong quá trình dọn dẹp.
-   **📝 Chuẩn hóa tên file (Naming Convention):** Tự động chuyển đổi tên file sang `snake_case`, lowercase và xóa dấu tiếng Việt (VD: `Báo cáo 2024.pdf` -> `bao_cao_2024.pdf`).
-   **📑 Tự động lập mục lục (Indexing):** Sinh file `INDEX.md` ngay tại root folder để tra cứu nhanh cấu trúc mới.
-   **🔄 Dọn dẹp định kỳ (Periodic Cleanup):** Hỗ trợ workflow dọn dẹp Desktop, Downloads hàng tuần để máy luôn sạch sẽ.

## 🛠️ Cài đặt

1.  Tải file `file-organizer-skill.skill` từ [Releases](https://github.com/your-repo/file-organizer-skill/releases).
2.  Import vào OpenClaw của bạn:
    ```bash
    openclaw skills add path/to/file-organizer-skill.skill
    ```

## 🚀 Cách sử dụng

Chỉ cần ra lệnh cho OpenClaw:

-   *"Dọn dẹp giúp anh folder Downloads theo chuẩn cá nhân."*
-   *"Tổ chức lại dự án này thành cấu trúc Tech Project chuẩn."*
-   *"Quét và đổi tên toàn bộ file trong thư mục này sang snake_case không dấu."*

## 📁 Cấu trúc thư mục đề xuất

Skill này đi kèm với các mẫu cấu trúc chuẩn (References):
-   **01_Active_Projects**: Dành cho dự án đang triển khai.
-   **02_Archive_Projects**: Lưu trữ dự án đã hoàn thành.
-   **00_BOD / 01_HR / 02_Finance**: Cấu trúc chuyên nghiệp cho doanh nghiệp.

## 📝 Quy chuẩn đặt tên (Naming Rules)

Skill áp dụng quy tắc:
1.  **Chữ thường (lowercase)**
2.  **Không dấu tiếng Việt**
3.  **Dấu gạch dưới (`_`) thay cho khoảng trắng**
4.  **Đánh số thứ tự cho các folder chính** (VD: `01_Work`, `02_Learning`)

## ⚠️ Lưu ý an toàn

-   Layla sẽ **LUÔN** lập kế hoạch và hỏi xác nhận từ bạn trước khi thực hiện bất kỳ thay đổi nào.
-   Skill **KHÔNG BAO GIỜ XÓA FILE** - chỉ di chuyển hoặc đổi tên.

## 🤝 Đóng góp

Mọi đóng góp (Issue/PR) đều được hoan nghênh để hoàn thiện hệ thống quản lý file cho cộng đồng OpenClaw Việt Nam.

---
*Phát triển bởi Anh Ba & Layla @ OpenClaw*
