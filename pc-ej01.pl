persona(pedro, hepatitis).
persona(pedro, gripe).
persona(juan, hepatitis).
persona(maria, gripe).
persona(carlos, intoxicacion).

es_sintoma(gripe, cansancio).
es_sintoma(gripe, fiebre).
es_sintoma(hepatitis, cansancio).
es_sintoma(intoxicacion, diarrea).

farmaco(aspirina, fiebre).
farmaco(lomotil, diarrea).


enfermedad(S, X):- (persona(S, X)).

sintomas(S, X):- (persona(S, Y), es_sintoma(Y, X)).

alivia(S, X):- (persona(S, Y), es_sintoma(Y, Z), farmaco(X, Z)).