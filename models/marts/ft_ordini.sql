select
    f.id_ordine,
    f.data_ordine,
    f.data_transazione,
    f.importo_pagato,
    f.abbonamento_inizio,
    f.abbonamento_fine,
    f.rinnovo_attivo,
    
    f.id_utente,
    u.nome as utente_nome,
    u.cognome as utente_cognome,
    

    f.id_piano,
    p.nome as piano_nome,
    p.prezzo as piano_prezzo,
    

    f.id_metodo,
    m.nome as metodo_pagamento,
    

    f.id_coupon,
    c.codice as coupon_codice,
    c.sconto as coupon_sconto

from {{ ref('fct_ordini') }} f
left join {{ ref('dim_utenti') }} u on f.id_utente = u.id_utente
left join {{ ref('dim_piani') }} p on f.id_piano = p.id_piano
left join {{ ref('dim_metodi') }} m on f.id_metodo = m.id_metodo
left join {{ ref('dim_coupon') }} c on f.id_coupon = c.id_coupon