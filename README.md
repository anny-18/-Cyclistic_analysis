# Cyclistic 共享自行車會員與非會員使用行為分析專題

## 專案簡介
本專題透過分析google的虛構共享自行車公司Cyclistic之租借紀錄，洞察會員與非會員的使用模式差異，並推論非會員轉換為會員的可能原因，協助制定行銷策略以提高會員數量。

## 使用資料
- Google所提供的Cyclistic之租借紀錄 (2024/06 ~ 2024/12）
- 資料內容：起始時間、經緯度、會員/非會員等   
👉 [資料集連結](https://divvy-tripdata.s3.amazonaws.com/index.html)

## 分析工具與環境
- Python 3.11.9
- MySQL 8.0.36 (Community Edition)
- Tableau Public 2024.5
- 作業系統：Windows 11

## 分析重點
- 會員及非會員具顯著差異項目
- 使用時間、使用次數、騎乘距離等。

## Tableau 視覺化連結
 - 具顯著項目1 (https://public.tableau.com/app/profile/wu.yun4549/viz/VisualizationofCyclisticAnalysisProject/1)
 - 具顯著項目2 (https://public.tableau.com/app/profile/wu.yun4549/viz/VisualizationofCyclisticAnalysisProject/2)

## 專案結構
```plaintext
project_folder/
├── data # 實際分析所使用資料的展示檔、上傳Tableau所使用資料的展示檔
├── docs # 分析報告、改動紀錄等文件
└── queries_codes # Python及SQL之程式碼
