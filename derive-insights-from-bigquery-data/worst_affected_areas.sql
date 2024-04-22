with deaths_by_state AS (SELECT
  subregion1_name AS state_name,
  SUM(cumulative_deceased) AS death_count
FROM
  bigquery-public-data.covid19_open_data.covid19_open_data
WHERE
  date = '2020-04-25' AND
  country_name = 'United States of America' AND
  subregion1_name is NOT NULL
GROUP BY
  state_name
HAVING 
  death_count > 150)

SELECT
  COUNT(*) AS count_of_states
FROM
  deaths_by_state