SELECT
    MONTH_OF,
    CITY,
    NEW_USERS,
    TOTAL_USERS
FROM {{ ref('int_google_analytics__monthly_users_by_city') }} 