SELECT 
    DATE AS REPORT_DATE_TS, 
    PROPERTY,
    _FIVETRAN_ID,
    CITY,
    TOTAL_USERS,
    EVENT_COUNT,
    NEW_USERS,
    ENGAGEMENT_RATE,
    KEY_EVENTS,    
    _FIVETRAN_SYNCED,
    TOTAL_REVENUE
FROM {{ source('google_analytics', 'demographic_city_report') }}