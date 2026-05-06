select
    id as id_metodo,
    nome
from {{ source('raw_pay', 'metodi') }}