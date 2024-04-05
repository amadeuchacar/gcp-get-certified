CREATE OR REPLACE TABLE taxirides.2015_fare_amount_predictions AS(
  SELECT
    *
  FROM
    ML.PREDICT(MODEL taxirides.fare_model_540, TABLE taxirides.report_prediction_data)
);