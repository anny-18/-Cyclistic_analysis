with temp as(
	SELECT member_casual, day_of_week, count(ride_id)
	FROM case_study_bike_sare_system_v2.all_data_time 
    where is_excluded=0
	group by member_casual, day_of_week
)

select *
FROM temp
order by member_casual, day_of_week;