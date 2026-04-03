import pandas as pd
from sqlalchemy import create_engine
import os

SERVER_NAME = r'.\SQLEXPRESS'  
DATABASE_NAME = 'Ecommerce_BI_Project'
DATA_FOLDER = r'D:\Data'

# Tạo kết nối tới SQL Server (Dùng Windows Authentication)
connection_string = f"mssql+pyodbc://@{SERVER_NAME}/{DATABASE_NAME}?driver=ODBC+Driver+17+for+SQL+Server&trusted_connection=yes"
engine = create_engine(connection_string)

# Mapping: Tên file CSV -> Tên bảng muốn tạo trong SQL
files_map = {
    'olist_orders_dataset.csv': 'orders',
    'olist_order_items_dataset.csv': 'order_items',
    'olist_products_dataset.csv': 'products',
    'olist_customers_dataset.csv': 'customers',
    'olist_order_payments_dataset.csv': 'payments',
    'olist_order_reviews_dataset.csv': 'reviews',
    'olist_geolocation_dataset.csv': 'geolocations',
    'olist_sellers_dataset.csv': 'sellers',
    'product_category_name_translation.csv': 'category_translations'
}

def load_data():
    print(" Bắt đầu nạp dữ liệu vào Staging...")
    
    for csv_file, table_name in files_map.items():
        file_path = os.path.join(DATA_FOLDER, csv_file)
        
        if os.path.exists(file_path):
            print(f" Đang xử lý: {table_name}...")
            try:
                # Đọc CSV
                df = pd.read_csv(file_path)
                
                # Đẩy vào SQL Server (Schema 'staging', nếu bảng có rồi thì thay thế)
                df.to_sql(table_name, engine, schema='staging', if_exists='replace', index=False)
                
                print(f" Đã nạp xong bảng: staging.{table_name} ({len(df)} dòng)")
            except Exception as e:
                print(f"Lỗi bảng {table_name}: {e}")
        else:
            print(f" Không tìm thấy file: {csv_file}")

    print("\n Hoàn tất quá trình ETL Staging!")

if __name__ == "__main__":
    load_data()
