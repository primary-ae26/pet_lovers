SELECT
    _FILE,
    _LINE,
    _MODIFIED,
    _fivetran_synced,
    REQUEST_AT AS REQUEST_AT_TS,
    CAST(CLIENT_ID AS STRING) AS CLIENT_ID,
    CAST(PET_ID AS STRING) AS PET_ID,
    CANCEL_AT AS CANCEL_AT_TS
FROM {{ source('box', 'cancellations') }}
