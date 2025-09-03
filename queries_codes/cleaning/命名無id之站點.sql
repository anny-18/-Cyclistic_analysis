-- 新增station_id中的資料
insert case_study_bike_sare_system_v2.station_id
-- 找出表中沒有id的資料, 將其經緯度寫至station_id,並賦予其id
WITH coordinate AS (
    SELECT 
        concat("unname_", DENSE_RANK() OVER (ORDER BY end_lat, end_lng)+1067) AS id,
		end_lat as lat, 
        end_lng as lng
    FROM case_study_bike_sare_system_v2.d_2024_06
    WHERE (end_station_id = '' or end_station_id is null) and end_lat is not null 
)
-- 使用 DISTINCT 來去除重複的資料
SELECT DISTINCT id, lat, lng
FROM coordinate;
