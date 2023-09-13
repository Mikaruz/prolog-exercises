pez_ciprinodontiformes(X) :-
    boca_pequena(X),
    dientes_puntiagudos(X),
    vive_en_rios(X),
    muchas_partes_del_mundo(X).

pez_poecilidos(X) :-
    orden_ciprinodontiformes(X),
    vive_en_rios(X),
    america_del_sur(X),
    macho(X),
    gonopodio(X).
    
pez_poecilidos(X) :-
    orden_ciprinodontiformes(X),
    vive_en_rios(X),
    america_del_sur(X),
    hembra(X).

pez_gambusia_affinis(X) :-
    familia_poecilidos(X),
    manchas_a_lo_largo_del_cuerpo(X).

pez_gambusia_punctata(X) :-
    familia_poecilidos(X),
    color_gris(X),
    rayas_verdes_a_lo_largo_del_cuerpo(X).

pez_anabatidos(X) :-
    tamano_medio(X),
    dientes_puntiagudos(X),
    vive_en_rios(X),
    todo_el_mundo(X),
    canales_laberinticos(X).

pez_luchadores_de_sian(X) :-
    orden_anabatidos(X),
    color_azul(X),
    rayas_rojas(X),
    vive_en_rios(X),
    asia(X).

perca_trepadora(X) :-
    orden_anabatidos(X),
    tamano_25_cm(X),
    not(rayas(X)).

pez_ciclidos(X) :-
    boca_pequena(X),
    vive_en_rios(X),
    todo_el_mundo(X),
    cola_redondeada(X).

pez_joya(X) :-
    orden_ciclidos(X),
    vive_en_rios(X),
    africa(X),
    color_rojo(X),
    manchas_negras(X).
