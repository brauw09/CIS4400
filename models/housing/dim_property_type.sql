{{
    config(
         materialized='table'
    )
}}

WITH property_type AS (

    SELECT 
    DISTINCT
    MD5(UPPER(TRIM(COALESCE(PROPERTY_TYPE,'')))) AS PROPERTY_TYPE_ID,
    PROPERTY_TYPE AS PROPERTY_TYPE
    FROM RAW_DATA
)

SELECT * FROM property_type