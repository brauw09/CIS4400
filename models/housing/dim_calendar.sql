{{
    config(
         materialized='table'
    )
}}
 
WITH date_cte AS (
     SELECT DISTINCT CAST(SALE_DATETIME AS timestamp) as date_value FROM RAW_DATA
)
 
SELECT
  TO_NUMBER(TO_CHAR(date_value, 'YYYYMMDD')) AS date_id,
  date_value AS date_iso,
  CAST(EXTRACT(YEAR FROM date_value) AS INTEGER) AS year_number,
  CAST(EXTRACT(MONTH FROM date_value) AS INTEGER)  AS month_number,
  CAST(EXTRACT(DAY FROM date_value) AS INTEGER)  AS day_number,
  CAST(EXTRACT(QUARTER FROM date_value) AS INTEGER)  AS quarter_number,
  TO_CHAR(date_value, 'Month') AS month_name,
  EXTRACT(DAYOFWEEK FROM date_value) AS day_of_week,
  CAST(FLOOR((EXTRACT(day FROM date_value) - 1) / 7) AS INTEGER) + 1 AS week_of_month,
  DAYNAME(date_value) AS day_name,
  CAST(EXTRACT(week FROM date_value) AS INTEGER)  AS week_of_year
FROM date_cte
 