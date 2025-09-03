WITH temp AS (
	SELECT member_casual, month(ended_at) AS month, count(ride_id) AS ride_id
	FROM case_study_bike_sare_system_v2.all_data_time  
	where is_excluded=0 
	group by member_casual, month(ended_at)
)

SELECT member_casual, avg(ride_id)
FROM temp
GROUP BY member_casual;