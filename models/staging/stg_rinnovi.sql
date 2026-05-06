select
    id as id_rinnovo,
    id_ordine,
    attivo
from {{ source('raw_pay', 'rinnovi') }}