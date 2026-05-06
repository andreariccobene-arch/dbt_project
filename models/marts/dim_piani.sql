select
    id_piano,
    nome,
    prezzo,
    durata
from {{ ref('stg_piani') }}