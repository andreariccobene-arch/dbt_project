select 
    id
    id_utente,
    id_piano,
    id_coupon,
    id_metodo,
    data_ordine
from {{ source('raw_pay', 'ordini') }}