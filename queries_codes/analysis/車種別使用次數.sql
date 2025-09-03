with temp as(
	SELECT member_casual, rideable_type, count(ride_id)
	FROM case_study_bike_sare_system_v2.all_data_time 
    where is_excluded=0
	group by member_casual, rideable_type
)

select *
FROM temp
order by member_casual, rideable_type;
