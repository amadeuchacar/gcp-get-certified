CREATE OR REPLACE TABLE covid_data.mobility_data AS
SELECT *
FROM `bigquery-public-data.covid19_google_mobility.mobility_report`;