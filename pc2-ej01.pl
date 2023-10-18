ensamblaje(bicicleta, [rueda_delantera, cuadro, rueda_trasera]).

ensamblaje(rueda_delantera, [llanta, radios, eje]).

ensamblaje(cuadro, [manejar, sillin, traccion]).

ensamblaje(traccion, [eje, platos, pedales, cadena]).

ensamblaje(rueda_trasera, [llanta, radios, eje, pinones]).

pieza_basica(X):- 
	ensamblaje(traccion, X).

toda(Z, Y, X, A, B):- 
	ensamblaje(bicicleta, Z), 
	ensamblaje(rueda_delantera, Y), 
	ensamblaje(cuadro, X), 
	ensamblaje(traccion, A), 
	ensamblaje(rueda_trasera, B).

agregar(P, I, X) :-
    ensamblaje(P, L),
    X = [I | L].

en_comun(L1, L2, X) :-
    ensamblaje(L1, E1),
    ensamblaje(L2, E2), 
    intersection(E1, E2, X).