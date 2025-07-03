{{
    config(
         materialized='table'
    )
}}

WITH property_type_cleaned AS (

    SELECT 
    DISTINCT
    MD5(UPPER(TRIM(COALESCE(PROPERTY_TYPE,'')))) AS PROPERTY_TYPE_ID,
    PROPERTY_TYPE AS PROPERTY_TYPE
    FROM RAW_DATA
), property_type AS (
        SELECT 
        PROPERTY_TYPE_ID,
        PROPERTY_TYPE,
        ROW_NUMBER() OVER (PARTITION BY PROPERTY_TYPE_ID ORDER BY PROPERTY_TYPE) AS rn
    FROM property_type_cleaned
    QUALIFY rn = 1
)

SELECT * FROM property_type