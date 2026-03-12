SELECT 
    DATE AS REPORT_DATE, 
    PROPERTY,
    _FIVETRAN_ID,
    CITY,
    TOTAL_USERS,
    EVENT_COUNT,
    NEW_USERS,
    ENGAGEMENT_RATE,
    ENGAGED_SESSIONS,
    KEY_EVENTS,    
    _FIVETRAN_SYNCED,
    TOTAL_REVENUE
FROM {{ source('google_analytics', 'demographic_city_report') }}