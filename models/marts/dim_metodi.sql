select
    id_metodo,
    nome
from {{ ref('stg_metodi') }}