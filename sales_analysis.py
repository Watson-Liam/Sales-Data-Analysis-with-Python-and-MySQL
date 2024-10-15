import pymysql
import pandas as pd

# 连接 MySQL 数据库
connection = pymysql.connect(
    host='localhost',
    user='root',
    password='linweijun0919/',
    database='sales_data'
)

# 执行 SQL 查询并将结果存储到 pandas DataFrame
query = "SELECT * FROM sales"
df = pd.read_sql(query, connection)

# 关闭连接
connection.close()

# 查看数据
print(df.head())

# 将 order_date 转换为日期类型
df['order_date'] = pd.to_datetime(df['order_date'])

# 填充缺失价格数据为平均值
df['price'].fillna(df['price'].mean(), inplace=True)

# 查看清洗后的数据
print(df.info())

# 计算总销售额
df['total_sales'] = df['quantity'] * df['price']
total_sales = df['total_sales'].sum()
print(f"Total Sales: ${total_sales:.2f}")

# 按类别统计销售额占比
category_sales = df.groupby('category')['total_sales'].sum()
print("Sales by Category:")
print(category_sales)

# 每月的销售额趋势
df['month'] = df['order_date'].dt.to_period('M')
monthly_sales = df.groupby('month')['total_sales'].sum()
print("Monthly Sales:")
print(monthly_sales)

import matplotlib.pyplot as plt

# 按类别绘制柱状图
category_sales.plot(kind='bar', title='Sales by Category')
plt.xlabel('Category')
plt.ylabel('Total Sales')
plt.show()

# 绘制每月销售趋势折线图
monthly_sales.plot(kind='line', title='Monthly Sales Trend')
plt.xlabel('Month')
plt.ylabel('Total Sales')
plt.show()