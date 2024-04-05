CREATE OR REPLACE MODEL taxirides.fare_model_540
OPTIONS
  (model_type = 'linear_reg', labels = ['fare_amount_818'])
AS(
  SELECT
    *
  FROM taxirides.taxi_training_data_328
);