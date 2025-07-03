{{
    config(
         materialized='table'
    )
}}

WITH location__cleaned_cte AS (

    SELECT 
    DISTINCT
    MD5(UPPER(TRIM(COALESCE(STATE,''))) || '-' ||
       UPPER(TRIM(COALESCE(PROPERTY_CITY,''))) || '-' ||
       UPPER(TRIM(COALESCE(PROPERTY_COUNTY,''))) || '-' ||
       UPPER(TRIM(COALESCE(PROPERTY_ZIP5,0)))) AS LOCATION_ID,
    PROPERTY_CITY as PROPERTY_CITY,
    PROPERTY_COUNTY as PROPERTY_COUNTY,
    PROPERTY_ZIP5 as PROPERTY_ZIP,
    STATE as PROPERTY_STATE
    FROM RAW_DATA
), location_cte AS (
    SELECT 
        LOCATION_ID,
        PROPERTY_CITY,
        PROPERTY_COUNTY,
        PROPERTY_ZIP,
        PROPERTY_STATE,
        ROW_NUMBER() OVER (PARTITION BY LOCATION_ID ORDER BY LOCATION_ID) AS rn
    FROM location__cleaned_cte
    QUALIFY rn = 1
)

SELECT * FROM location_cte