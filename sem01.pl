aula(c201, 'Principios de algortimos').
aula(c203, 'Matematica discreta').
aula(c205).
aula(c207).
aula(c209).

laboratorio(c202).
laboratorio(c204).
laboratorio(c206).
laboratorio(c208, 'Taller de programacion web').
laboratorio(c210, 'Programacion logica y funcional').

es_aula(X) :- aula(X).
es_laboratorio(X) :- laboratorio(X).

aula_dicta(X) :- (aula(X, N), write(N)).
laboratorio_dicta(X) :- (laboratorio(X, N), write(N)).

se_dicta(X) :-
(aula(X, N); laboratorio(X, N)),
write('Se dicta "'),
write(N),
write('".').


%consultas
%aula_dicta(c201).
%se_dicta(c201).
%se_dicta(c208).