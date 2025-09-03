with temp as
(SELECT ride_id, started_at, ended_at, 
	CASE 
		WHEN started_at < ended_at THEN concat(floor(timestampdiff(second, started_at, ended_at)/60), ':', mod(timestampdiff(second, started_at, ended_at), 60 )) 
		ELSE concat(floor(timestampdiff(second, ended_at, started_at)/60), ':', mod(timestampdiff(second, ended_at, started_at), 60 ))
	END as time 
FROM case_study_bike_sare_system.d_2024_12
WHERE is_excluded = 0 
	AND timestampdiff(minute, started_at, ended_at) >= 360  -- 這邊過濾時間差大於或等於360分鐘
ORDER BY started_at)

update d_2024_12 as ot
join temp on temp.ride_id = ot.ride_id
set ot.is_excluded = 1