SELECT count(*), member_casual
FROM case_study_bike_sare_system_v2.all_data_time
WHERE is_excluded=0 AND DAYOFWEEK(started_at) BETWEEN 1 AND 5 AND (HOUR(started_at) BETWEEN 6 AND 9 OR HOUR(started_at) BETWEEN 16 AND 19)
GROUP BY member_casual;
