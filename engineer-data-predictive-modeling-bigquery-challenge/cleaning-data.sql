CREATE OR REPLACE TABLE taxirides.taxi_training_data_328 AS(
  SELECT
    pickup_datetime,
    pickup_longitude AS pickuplon,
    pickup_latitude AS pickuplat,
    dropoff_longitude AS dropofflon,
    dropoff_latitude AS dropofflat,
    passenger_count AS passengers,
    (tolls_amount + fare_amount) AS fare_amount_818
  FROM taxirides.historical_taxi_rides_raw TABLESAMPLE SYSTEM (1 PERCENT)
  WHERE
    trip_distance > 0 AND
    fare_amount > 2.5 AND
    ABS(pickup_longitude) <= 90 AND pickup_longitude != 0 AND
    ABS(pickup_latitude) <= 90 AND pickup_latitude != 0 AND
    ABS(dropoff_longitude) <= 90 AND dropoff_longitude != 0 AND
    ABS(dropoff_latitude) <= 90 AND dropoff_latitude != 0 AND
    passenger_count > 0
)