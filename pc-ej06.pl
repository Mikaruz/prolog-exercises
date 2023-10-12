cesarea_prevista_de_antemano(BebePodalico) :- BebePodalico.
cesarea_prevista_de_antemano(Gestosis) :- Gestosis.
cesarea_prevista_de_antemano(DiabetesGravidica) :- DiabetesGravidica.
cesarea_prevista_de_antemano(PlacentaPosicionPrevioCentral) :- PlacentaPosicionPrevioCentral.
cesarea_prevista_de_antemano(ProblemasCorazon) :- ProblemasCorazon.
cesarea_prevista_de_antemano(ProblemasRenales) :- ProblemasRenales.
cesarea_prevista_de_antemano(InfeccionesGenitalesGraves) :- InfeccionesGenitalesGraves.

cesarea_improvisada_duracion_parto(CabezaGrande) :- CabezaGrande.
cesarea_improvisada_duracion_parto(CabezaNoEncajada) :- CabezaNoEncajada.
cesarea_improvisada_duracion_parto(SufrimientoFetal) :- SufrimientoFetal.
cesarea_improvisada_duracion_parto(PlacentaDesprendida) :- PlacentaDesprendida.

incision(umbilico_pubica) :- cesarea_improvisada_duracion_parto(PlacentaDesprendida).
incision(transversal_baja).
incision(joel_coell).

% Secuencia de fases de la intervención
fase(cortar).
fase(extraer_bebe).
fase(extraer_placenta).
fase(suturar).

% Hechos de ejemplo (puedes agregar más hechos o modificarlos según sea necesario)
bebe_podalico(bebe1).
gestosis(madre1).
placenta_posicion_previo_central(madre1).
problemas_corazon(madre2).
placenta_desprendida(madre3).

% Consultas de ejemplo
% ¿Se debe realizar una cesárea prevista de antemano para el bebe1?
?- cesarea_prevista_de_antemano(bebe1).

% ¿Qué tipo de incisión se debe hacer para una cesárea improvisada durante el parto para madre3?
?- incision(IncisionParaMadre3), cesarea_improvisada_duracion_parto(madre3).
