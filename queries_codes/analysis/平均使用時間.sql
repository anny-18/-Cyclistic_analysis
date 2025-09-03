SELECT member_casual, concat(floor(avg(ride_time)/60), ":", LPAD(MOD(ROUND(AVG(ride_time), 0), 60), 2, "0")) as avg
FROM case_study_bike_sare_system_v2.all_data_time 
where is_excluded=0
group by member_casual;
