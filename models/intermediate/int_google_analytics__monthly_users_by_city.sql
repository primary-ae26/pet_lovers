SELECT
    EXTRACT(MONTH FROM REPORT_DATE_TS) as MONTH_OF,
    CITY,
    SUM(NEW_USERS) as NEW_USERS,
    SUM(TOTAL_USERS) as TOTAL_USERS
FROM {{ ref('base_google_analytics__demographic_city_report') }} 
GROUP BY 1