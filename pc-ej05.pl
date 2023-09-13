manchas_oscuras(robbie).

come_carne(robbie).

tiene_plumas(suzie).

vuela_bien(suzie).

tiene_pelo(robbie).



mamifero(X) :- tiene_pelo(X).

mamifero(X) :- da_leche(X).

ave(X) :- tiene_plumas(X).

ave(X) :- vuela(X), pone_huevos(X).

carnivoro(X) :- come_carne(X).

carnivoro(X) :- tiene_dientes_puntiagudos(X), tiene_garras(X), ojos_al_frente(X).

ungulado(X) :- mamifero(X), tiene_pezunas(X).

ungulado(X) :- mamifero(X), rumia(X).

leopardo(X) :- mamifero(X), carnivoro(X), manchas_oscuras(X).

tigre(X) :- mamifero(X), carnivoro(X), rayas_negras(X).

jirafa(X) :- ungulado(X), cuello_largo(X), piernas_largas(X), manchas_oscuras(X).

cebra(X) :- ungulado(X), rayas_negras(X).

avestruz(X) :- ave(X), no_vuela(X), cuello_largo(X), piernas_largas(X), blanco_negro(X).

pinguino(X) :- ave(X), no_vuela(X), nada(X), blanco_negro(X).

albatros(X) :- ave(X), vuela_bien(X).

misma_especie(X, Y) :- especie(X, Z), especie(Y, Z).