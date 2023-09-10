limpia(a, maria, 6).
limpia(a, maria, 10).
limpia(a, maria, 15).
limpia(a, maria, 23).

limpia(b, arturo, 5).
limpia(b, arturo, 13).
limpia(b, arturo, 17).
limpia(b, arturo, 21).

limpia(c, juan, 6.15).
limpia(c, juan, 10.15).
limpia(c, juan, 17).

limpia(d, margarita, 1).
limpia(d, margarita, 5).
limpia(d, margarita, 9).
limpia(d, margarita, 13).
limpia(d, margarita, 17).
limpia(d, margarita, 21).

curso(software, a).
curso(sistemas, a).
curso(electrica, b).
curso(electrica, c).
curso(mecatronica, d).

laboratorio(a, 40).
laboratorio(b, 26).
laboratorio(c, 40).
laboratorio(d, 26).

dondeEsta(Y, Z):- (limpia(X, Y, Z), curso(A, X)),
write(Y),
write(" esta en el laboratorio "),
write(X),
write(" donde se dicta "),
write(A).

queLaboratorioUtiliza(X):- (curso(X, Y)),
write("Usa el laboratorio "),
write(Y).

cuantosAlumnos(X):- (laboratorio(X, Y)),
write("Pueden usar comodamente "),
write(Y),
write(" alumnos").

encargadoLimpieza(X):- (curso(X, Y), limpia(Y, A, B)),
write("El encargado es: "),
write(A).

cuantosEquipos(Y):- (limpia(X, Y, Z), laboratorio(X, A)),
write("Hay "),
write(A),
write(" equipos").