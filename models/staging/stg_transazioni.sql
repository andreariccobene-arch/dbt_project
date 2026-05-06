select 
    id as id_transazione,
    id_ordine,
    data_transazione,
    importo
from {{ source('raw_pay', 'transazioni') }}