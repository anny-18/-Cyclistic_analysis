SELECT count(ride_id), member_casual 
FROM case_study_bike_sare_system_v2.all_data_time  
where is_excluded=0 
group by member_casual;