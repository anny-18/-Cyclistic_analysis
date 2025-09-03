with temp as(
	SELECT member_casual, month(ended_at) as month, count(ride_id)
	FROM case_study_bike_sare_system_v2.all_data_time 
    where is_excluded=0
	group by member_casual, month
)

select *
FROM temp
order by member_casual, month;
