linea_color(celeste, [plaza_de_mayo, lima, piedras, perú, pasco, alberti, plaza_miserere, loria, castro_barros, venezuela, carabobo, rio_de_janeiro, puan, primera_junta, acoyte, san_jose_de_flores, san_pedrito]).

linea_color(rojo, [leandro_n_alem, florida, lavalle, nueve_de_julio, carlos_pellegrini, pasteur, pueyrredon, callao, uruguay, cordoba, medrano, angel_gallardo, malabia, dorio, juan_manuel_rosas]).

linea_color(azul, [retiro, catalinas, san_martin, lavalle, diagonal_norte, av_de_mayo, moreno, independencia, san_juan, caseros, constitucion]).

linea_color(verde, [catedral, nueve_de_julio, tribunales, callao, fac_ingenieria, pasteur, pueyrredon, aguero, bulnes, scalabrini_ortiz, plaza_italia, palermo, ministro_carranza, juramento, congreso_de_tucuman]).

linea_color(violeta, [retiro, corrientes, pichincha, independencia, san_jose, entre_rios, rodolfo_walsh, boedo, av_la_plata, jose_estrada, emilio_mitre, medalla_milagrosa, varela, plaza_de_los_virreyes]).

linea_color(amarillo, [fac_derecho, santa_fe, las_heras, cordoba, callao, uruguay, once, pueyrredon, corrientes, hospitales]).





recorrido_color(X, Y):- linea_color(X, Y).


punto_de_interseccion(Z) :- linea_color(X, A), linea_color(Y, B), X \= Y, member(Z, A), member(Z, B), 
	write('Interseccion: '), write(X), write(' con '), write(Y).