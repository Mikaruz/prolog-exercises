estudiante(maria).
estudiante(natalia).

casado(jorge).


joven(X):- estudiante(X).

soltero(X):- joven(X), estudiante(X), not(casado(X)).

trabajador(X):- estudiante(X), casado(X).

seminario(X):- trabajador(X), soltero(X).

independiente(X):- soltero(X).

casar(A, B):- soltero(A), soltero(B), A \== B.