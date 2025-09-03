WITH TEMP AS(
SELECT ride_id, started_at, ended_at, 
	CASE 
		WHEN started_at < ended_at THEN concat(floor(timestampdiff(second, started_at, ended_at)/60), ':', mod(timestampdiff(second, started_at, ended_at), 60 )) 
		ELSE concat(floor(timestampdiff(second, ended_at, started_at)/60), ':', mod(timestampdiff(second, ended_at, started_at), 60 ))
        END as time 
    FROM case_study_bike_sare_system.d_2025_02
WHERE is_excluded = 0 
	AND floor(timestampdiff(second, started_at, ended_at)/60)<1 
ORDER BY time
) 


update case_study_bike_sare_system.d_2025_02 as ori
JOIN TEMP ON TEMP.ride_id = ori.ride_id
set ori.is_excluded = 1
