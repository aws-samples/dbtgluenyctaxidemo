SELECT (avg_trip_distance/avg_duration) as avg_distance_per_duration
, year
, month 
, type 
FROM {{ ref('silver_nyctaxi_avg_metrics') }}