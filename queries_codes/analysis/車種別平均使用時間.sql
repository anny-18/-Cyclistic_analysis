with temp as(
	SELECT member_casual, rideable_type, avg(ride_time) as avg
	FROM case_study_bike_sare_system_v2.all_data_time 
    where is_excluded=0
    group by member_casual, rideable_type
	
)

select member_casual, rideable_type, concat(floor(avg/60), ':', mod(avg, 60 )) as time
FROM temp
order BY member_casual, rideable_type;
