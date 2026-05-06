select
    id as id_piano,
    nome,
    prezzo,
    durata
from {{ source('raw_pay', 'piani') }}