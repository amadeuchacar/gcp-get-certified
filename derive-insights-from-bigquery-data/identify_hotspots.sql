SELECT
  subregion1_name AS state,
  SUM(cumulative_confirmed) AS total_confirmed_cases
FROM
  bigquery-public-data.covid19_open_data.covid19_open_data
WHERE
  date = '2020-04-25' AND
  country_code = 'US' AND
  subregion1_name IS NOT NULL
GROUP BY
  subregion1_name
HAVING
  total_confirmed_cases > 3000
ORDER BY
  total_confirmed_cases DESC