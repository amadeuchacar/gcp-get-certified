SELECT
  SUM(cumulative_confirmed) AS total_confirmed_cases,
  SUM(cumulative_deceased) AS total_deaths,
  (SUM(cumulative_deceased)/SUM(cumulative_confirmed))*100 AS case_fatality_ratio
FROM
  bigquery-public-data.covid19_open_data.covid19_open_data
WHERE
  date BETWEEN '2020-05-01' AND '2020-05-31' AND
  country_name = 'Italy'