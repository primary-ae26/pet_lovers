SELECT 
    requests.CLIENT_ID,
    requests.PET_ID,
    requests.REQUEST_AT,
    requests.REQUEST_DAY_FROM,
    requests.DURATION_MIN,
    cancellations.CANCEL_AT_TS,
    walks.WALKER_ID,
    walks.PRICE_PAID,
    walks.TAXES_PAID,
    walks.PAID_TO_WALKER,
    walks.REFUND
FROM {{ref('base_box__requests')}} as requests
LEFT JOIN {{ref('base_box__cancellations')}} as cancellations
    ON requests.CLIENT_ID = cancellations.CLIENT_ID
    AND requests.REQUEST_AT = cancellations.REQUEST_AT_TS
LEFT JOIN {{ref('base_box__walks')}} AS WALKS
    ON requests.CLIENT_ID = walks.CLIENT_ID
    AND requests.REQUEST_DAY_FROM = walks.REQUEST_DAY_FROM

