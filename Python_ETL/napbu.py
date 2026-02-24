import pandas as pd
from sqlalchemy import create_engine

# CẤU HÌNH
SERVER_NAME = r'.\SQLEXPRESS' 
DATABASE_NAME = 'Ecommerce_BI_Project'
CSV_PATH = 'product_category_name_translation.csv' # Đảm bảo file này nằm cùng chỗ với file code py

connection_string = f"mssql+pyodbc://@{SERVER_NAME}/{DATABASE_NAME}?driver=ODBC+Driver+17+for+SQL+Server&trusted_connection=yes"
engine = create_engine(connection_string)

try:
    df = pd.read_csv(CSV_PATH)
    # Nạp vào bảng 'category_translation'
    df.to_sql('category_translation', engine, schema='staging', if_exists='replace', index=False)
    print("✅ Đã nạp bù thành công bảng Translation!")
except Exception as e:
    print(f"❌ Lỗi: {e}")