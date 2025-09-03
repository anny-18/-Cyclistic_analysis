
with temp as(
	SELECT member_casual, avg(distance)
	FROM all_data_location
	WHERE is_excluded =0
	GROUP BY member_casual
)
select * FROM temp;