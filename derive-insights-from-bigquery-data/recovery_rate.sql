SELECT
  country_name AS country,
  SUM(cumulative_recovered) AS recovered_cases,
  SUM(cumulative_confirmed) AS confirmed_cases,
  (SUM(cumulative_recovered) / SUM(cumulative_confirmed)) * 100 AS recovery_rate
FROM
  bigquery-public-data.covid19_open_data.covid19_open_data
WHERE
  date = '2020-05-10'
GROUP BY
  country_name
HAVING
  confirmed_cases > 50000
ORDER BY
  recovery_rate DESC
LIMIT
  5
