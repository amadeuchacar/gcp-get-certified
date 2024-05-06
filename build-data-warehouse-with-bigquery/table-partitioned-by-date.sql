CREATE OR REPLACE TABLE covid.oxford_policy_tracker
PARTITION BY date
OPTIONS(
    partition_expiration_days=1080
) AS
SELECT
   *
FROM
   `bigquery-public-data.covid19_govt_response.oxford_policy_tracker`
WHERE
   alpha_3_code NOT IN ('GBR', 'BRA', 'CAN','USA')