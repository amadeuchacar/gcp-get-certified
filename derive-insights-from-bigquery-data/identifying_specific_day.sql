SELECT
  date
FROM
  bigquery-public-data.covid19_open_data.covid19_open_data
WHERE
  country_name = 'Italy' AND
  cumulative_deceased > 12000
ORDER BY
  date
LIMIT 1