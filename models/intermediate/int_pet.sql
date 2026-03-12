WITH temp_rank AS (
    SELECT *, ROW_NUMBER() OVER(PARTITION BY PET_ID ORDER BY REQUEST_AT DESC) as row_n
    FROM {{ref('base_box__requests')}}
)

SELECT PET_ID, PET_NAME, CLIENT_ID
FROM temp_rank
WHERE row_n = 1