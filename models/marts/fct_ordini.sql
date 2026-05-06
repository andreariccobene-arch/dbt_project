select
    o.id_ordine,
    o.id_utente,
    o.id_piano,
    o.id_coupon,
    o.id_metodo,
    o.data_ordine,
    t.data_transazione,
    t.importo as importo_pagato,
    a.iniziato_il as abbonamento_inizio,
    a.finito_il as abbonamento_fine,
    r.attivo as rinnovo_attivo
from {{ ref('stg_ordini') }} o
left join {{ ref('stg_transazioni') }} t on o.id_ordine = t.id_ordine
left join {{ ref('stg_abbonamenti') }} a on o.id_ordine = a.id_ordine
left join {{ ref('stg_rinnovi') }} r on o.id_ordine = r.id_ordine