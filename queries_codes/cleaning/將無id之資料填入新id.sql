-- 填入unname_id的id資料到表格中
USE case_study_bike_sare_system_v2;
DROP TEMPORARY TABLE IF EXISTS temp_table;
-- 找出沒有id的資料將其與unname合併
CREATE TEMPORARY TABLE temp_table as
	select *
	from station_id join (select ride_id, end_lat, end_lng, end_station_id 
	from d_2024_06 as ot
	WHERE ot.end_station_id = '' or ot.end_station_id  is null)as temp on temp.end_lat = station_id.lat and temp.end_lng = station_id.lng;
-- 將unname裡的id寫入原表中 
UPDATE d_2024_06 as ot
INNER join temp_table on ot.ride_id = temp_table.ride_id
SET ot.end_station_id = temp_table.id
WHERE ot.end_station_id = '' or ot.end_station_id is null;