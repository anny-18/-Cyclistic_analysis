import pandas as pd

# 讀取 CSV
df = pd.read_csv('dataset_datatime_cleaned/202407_datatime_cleaned.csv')

# 顯示前幾列
print(df[['started_at', 'ended_at']].head())

# 去除小數點後的部分，轉換成字串後捨去掉小數點後的位數切掉
df['started_at'] = df['started_at'].astype(str).str.split('.').str[0]
df['ended_at'] = df['ended_at'].astype(str).str.split('.').str[0]

# 存回原檔
df.to_csv('dataset_datatime_cleaned/202407_datatime_cleaned.csv', index=False)

# 顯示前幾列結果
print(df[['started_at', 'ended_at']].head())