SELECT
  SUM(cumulative_confirmed) AS total_cases_worldwide
FROM
  bigquery-public-data.covid19_open_data.covid19_open_data
WHERE
  date = '2020-04-25'