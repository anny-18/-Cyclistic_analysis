CREATE TABLE case_study_bike_sare_system_v2.d_2024_10 (
  ride_id VARCHAR(16),
  rideable_type VARCHAR(16),
  started_at DATETIME,
  ended_at DATETIME,
  start_station_name VARCHAR(64),
  start_station_id VARCHAR(35),
  end_station_name VARCHAR(64),
  end_station_id VARCHAR(35),
  start_lat DOUBLE,
  start_lng DOUBLE,
  end_lat DOUBLE,
  end_lng DOUBLE,
  member_casual VARCHAR(6)
  -- 加上其他欄位
);