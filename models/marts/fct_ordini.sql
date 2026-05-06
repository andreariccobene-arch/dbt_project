select
    stg_ordini.id_ordine,
    stg_ordini.id_utente,
    stg_ordini.id_piano,
    stg_ordini.id_coupon,
    stg_ordini.id_metodo,
    stg_ordini.data_ordine,
    t.data_transazione,
    t.importo as importo_pagato,
    a.iniziato_il as abbonamento_inizio,
    a.finito_il as abbonamento_fine,
    r.attivo as rinnovo_attivo
from {{ ref('stg_ordini') }} 
left join {{ ref('stg_transazioni') }} t on stg_ordini.id_ordine = t.id_ordine
left join {{ ref('stg_abbonamenti') }} a on stg_ordini.id_ordine = a.id_ordine
left join {{ ref('stg_rinnovi') }} r on stg_ordini.id_ordine = r.id_ordine