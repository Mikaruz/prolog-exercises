linea_color(celeste, [plaza_de_mayo, peru, piedras, lima, saenz_pena, congreso, pasco, alberti, plaza_miserere, loria, castro_barros, rio_de_janeiro, acoyte, primera_junta, puan, carabobo, san_jose_de_flores, san_pedrito]).

linea_color(rojo, [leandro_n_alem, florida, carlos_pellegrini, uruguay, callao, pasteur, pueyrredon, carlos_gardel, medrano, angel_gallardo, malabia, dorrego, federico_lacroze, tronador, de_los_incas, echeverria, juan_manuel_de_rosas]).

linea_color(azul, [retiro, general_san_martin, lavalle, diagonal_norte, avenida_de_mayo, moreno, independencia, san_juan, constitucion]).

linea_color(verde, [catedral, nueve_de_julio, tribunales, callao, facultad_de_medicina, pueyrredon, aguero, bulnes, scalabrini_ortiz, plaza_italia, palermo, ministro_carranza, olleros, jose_hernandez, juramento, congreso_de_tucuman]).

linea_color(violeta, [retiro, catalinas, correo_central, bolivar, belgrano, independencia, san_jose, entre_rios, pichincha, jujuy, general_urquiza, boedo, avenida_la_plata, jose_maria_moreno, emilio_mitre, medalla_milagrosa, varela, plaza_de_los_virreyes]).

linea_color(amarillo, [facultad_de_derecho, las_heras, santa_fe, cordoba, corrientes, once, venezuela, humberto_i, inclan, caseros, parque_patricios, hospitales]).


linea_subte("A", [plaza_de_mayo, peru, piedras, lima, saenz_pena, congreso, pasco, alberti, plaza_miserere, loria, castro_barros, rio_de_janeiro, acoyte, primera_junta, puan, carabobo, san_jose_de_flores, san_pedrito]).

linea_subte("B", [leandro_n_alem, florida, carlos_pellegrini, uruguay, callao, pasteur, pueyrredon, carlos_gardel, medrano, angel_gallardo, malabia, dorrego, federico_lacroze, tronador, de_los_incas, echeverria, juan_manuel_de_rosas]).

linea_subte("C", [retiro, general_san_martin, lavalle, diagonal_norte, avenida_de_mayo, moreno, independencia, san_juan, constitucion]).

linea_subte("D", [catedral, nueve_de_julio, tribunales, callao, facultad_de_medicina, pueyrredon, aguero, bulnes, scalabrini_ortiz, plaza_italia, palermo, ministro_carranza, olleros, jose_hernandez, juramento, congreso_de_tucuman]).

linea_subte("E", [retiro, catalinas, correo_central, bolivar, belgrano, independencia, san_jose, entre_rios, pichincha, jujuy, general_urquiza, boedo, avenida_la_plata, jose_maria_moreno, emilio_mitre, medalla_milagrosa, varela, plaza_de_los_virreyes]).

linea_subte("H", [facultad_de_derecho, las_heras, santa_fe, cordoba, corrientes, once, venezuela, humberto_i, inclan, caseros, parque_patricios, hospitales]).



longitud(L, N):-
	linea_color(L, X),
	length(X, N).

recorrido_color(X, Y):- 
	linea_color(X, Y).


punto_de_interseccion(Z) :- 
	linea_color(X, A), 
	linea_color(Y, B), 
	X \= Y, 
	member(Z, A), 
	member(Z, B), 
	write('Interseccion: '), write(X), write(' con '), write(Y).

estaciones_en_comun(L1, L2, X) :-
    linea_color(L1, E1),
    linea_color(L2, E2), 
    intersection(E1, E2, X).

mas_estaciones(X, Y) :-
    findall(N, longitud(_, N), Z),
    max_list(Z, Y), 
    longitud(X, Y).

quitar_estaciones(Z, Y, X) :-
    linea_color(Z, L),
    subtract(L, Y, X). 

   