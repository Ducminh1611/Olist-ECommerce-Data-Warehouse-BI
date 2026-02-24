# Olist-ECommerce-Data-Warehouse-BI
Data Analytics project using Python, SQL Server, and Power BI
#  Phân tích Dữ liệu & Xây dựng Data Warehouse: Olist E-Commerce

##  Giới thiệu dự án (Project Overview)
Dự án này xây dựng một luồng xử lý dữ liệu (Data Pipeline) và phân tích toàn diện cho Olist - một nền tảng thương mại điện tử lớn tại Brazil. 
Mục tiêu của dự án là chuyển đổi dữ liệu thô thành các thông tin chi tiết (insights) có giá trị kinh doanh, bao quát toàn bộ quy trình từ: Trích xuất & Làm sạch dữ liệu (ETL), Thiết kế Kho dữ liệu (Data Warehouse) theo mô hình Star Schema, cho đến Trực quan hóa dữ liệu (Data Visualization).

## 🛠️ Công nghệ sử dụng (Tech Stack)
* **Data Pipeline (ETL):** Python (`pandas`, `sqlalchemy`) để xử lý và nạp dữ liệu từ file CSV.
* **Database & Data Warehouse:** SQL Server (SSMS) để lưu trữ và truy vấn.
* **Data Visualization:** Power BI để xây dựng Dashboard tương tác.
* **Kỹ thuật phân tích (Analytical Techniques):** RFM Segmentation (Phân nhóm khách hàng), Cohort Retention Analysis (Phân tích tỷ lệ giữ chân).

##  Kiến trúc Dữ liệu (Data Architecture)
Dữ liệu thô được chuẩn hóa và thiết kế lại theo mô hình **Hình sao (Star Schema)** để tối ưu hóa hiệu suất truy xuất dữ liệu cho báo cáo BI.
* **Bảng Fact:** `Fact_Sales` (Lưu trữ thông tin giao dịch, doanh thu).
* **Các bảng Dimension:** `Dim_Customers`, `Dim_Products`, `Dim_Time`.

![Data Model](Image/data_model.png)

##  Phân tích Kinh doanh (Key Business Insights)
Dựa trên Dashboard được xây dựng, dưới đây là những điểm nhấn quan trọng về tình hình kinh doanh của Olist:
1. **Xu hướng Doanh thu (Revenue Trend):** Tổng doanh thu đạt **13.59M**. Đáng chú ý có một đỉnh doanh thu bùng nổ vào **Tháng 11/2017**, chủ yếu nhờ vào hiệu ứng của chiến dịch Black Friday.
2. **Sản phẩm chủ lực (Top Categories):** `health_beauty` (Sức khỏe & Sắc đẹp) và `watches_gifts` (Đồng hồ & Quà tặng) là 2 nhóm ngành hàng mang lại doanh thu cao nhất.
3. **Bài toán Tỷ lệ giữ chân (Customer Retention):** Phân tích Cohort Analysis chỉ ra một vấn đề nghiêm trọng: Tỷ lệ khách hàng quay lại mua sắm giảm xuống dưới **1%** ngay sau tháng đầu tiên. Olist đang hoạt động chủ yếu theo mô hình "mua một lần" (one-time purchase), đòi hỏi công ty cần có các chiến lược CRM và remarketing mạnh mẽ hơn để tăng giá trị vòng đời khách hàng (CLV).

##  Power BI Dashboard
![Dashboard](Image/dashboard.png)

##  Cấu trúc Thư mục (Repository Structure)
* `1_Python_ETL/`: Các script Python dùng để xử lý và load dữ liệu thô vào CSDL.
* `2_SQL_Analysis/`: Các câu lệnh SQL dùng để tạo bảng (DDL) và phân tích dữ liệu nâng cao (Window Functions, CTEs).
* `3_PowerBI_Dashboard/`: File source `.pbix` và bản xuất PDF của Dashboard.
