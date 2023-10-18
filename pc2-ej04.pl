iestp("Argentina", "Lima Centro", "Cercado de Lima", ["Administración de Empresas", "Computación e Informática", "Contabilidad"]).
iestp("Arturo Sabroso Montoya", "Lima Centro", "La Victoria", ["Computación e Informática", "Contabilidad", "Enfermería Técnica", "Prótesis Dental", "Secretariado Ejecutivo"]).
iestp("Diseño y Comunicación", "Lima Centro", "Cercado de Lima", ["Comunicación Audiovisual", "Diseño de Interiores", "Diseño de Modas", "Diseño Publicitario"]).
iestp("Jose Pardo", "Lima Centro", "La Victoria", ["Electrónica Industrial", "Electrotecnia Industrial (Electricidad)", "Metalurgia", "Computación e Informática", "Mecánica de Producción", "Mecánica Automotriz", "Construcción Civil"]).
iestp("María Rosario Aráoz Pinto", "Lima Centro", "San Miguel", ["Administración de Empresas", "Computación e Informática", "Construcción Civil", "Contabilidad", "Diseño Gráfico", "Diseño Publicitario", "Mecánica Automotriz", "Mecánica de Producción", "Secretariado Ejecutivo"]).
iestp("Naciones Unidas", "Lima Centro", "Pueblo Libre", ["Cosmética Dermatológica"]).

iestp("Huaycán", "Lima Este", "Ate", ["Computación e Informática", "Electrónica Industrial", "Enfermería Técnica", "Mecánica Automotriz"]).
iestp("Magda Portal", "Lima Este", "Cieneguilla", ["Administración de Servicios y Hostelería"]).
iestp("Manuel Seoane Corrales", "Lima Este", "San Juan de Lurigancho", ["Computación E Informática", "Contabilidad", "Electrotecnia Industrial", "Enfermería Técnica", "Mecánica Automotriz", "Mecánica de Producción", "Química Industrial"]).
iestp("Misioneros Monfortianos", "Lima Este", "Chaclacayo", ["Desarrollo de los Sistemas de Información", "Enfermería Técnica", "Mecatrónica Automotriz"]).
iestp("Ramiro Prialé Prialé", "Lima Este", "Lurigancho", ["Computación e Informática", "Contabilidad", "Cosmética Dermatológica", "Enfermería Técnica"]).

iestp("Carlos Cueto Fernandini", "Lima Norte", "Comas", ["Administración de Empresas", "Computación e Informática", "Contabilidad", "Electrónica Industrial", "Electrotecnia Industrial", "Mecánica Automotriz", "Mecánica de Producción", "Metalurgia", "Técnica en Laboratorio Clínico"]).
iestp("Luis Negreiros Vega", "Lima Norte", "San Martín de Porres", ["Computación e Informática", "Contabilidad", "Electrónica Industrial", "Mecánica Automotriz", "Mecánica de Producción"]).
iestp("Manuel Arévalo Cáceres", "Lima Norte", "Los Olivos", ["Computación e Informática", "Enfermería Técnica", "Industrias Alimentarias"]).

iestp("Antenor Orrego Espinoza", "Lima Sur", "Chorrillos", ["Administración Industrial", "Computación e Informática", "Contabilidad", "Electrónica Industrial", "Enfermería Técnica", "Mecánica Automotriz", "Técnica en Farmacia"]).
iestp("Gilda Liliana Ballivian Rosado", "Lima Sur", "San Juan de Miraflores", ["Administración de empresas", "computación e informática", "construcción civil", "contabilidad", "electrónica industrial", "electrotecnia industrial", "mecánica automotriz", "mecánica de producción"]).
iestp("Juan Velasco Alvarado", "Lima Sur", "Villa María del Triunfo", ["Computación e Informática", "Contabilidad", "Enfermería Técnica", "Mecánica Automotriz", "Técnica en Farmacia"]).
iestp("Julio César Tello", "Lima Sur", "Villa el Salvador", ["Administración de Empresas", "Computación e Informática", "Contabilidad", "Electrotecnia Industrial", "Mecánica Automotriz", "Mecánica de Producción", "Secretariado Ejecutivo"]).
iestp("Lurín", "Lima Sur", "Lurín", ["Computación e Informática", "Contabilidad", "Prótesis Dental"]).
iestp("San Francisco de Asís", "Lima Sur", "Villa María del Triunfo", ["Contabilidad", "Electrotecnia Industrial"]).
iestp("Villa María", "Lima Sur", "Villa María", ["Computación e Informática", "Cosmética Dermatológica", "Enfermería Técnica", "Industrias Alimentarias"]).

iestp("Fe y Alegría 61", "IEST por convenio", "Villa el Salvador", ["Producción de Confecciones"]).
iestp("Fe y Alegría 75", "IEST por convenio", "San Juan de Miraflores", ["Administración de Hoteles y Restaurantes", "Planeamiento y Control de Proyectos de Construcción", "Producción de Confecciones"]).

iestp("Manuel Gonzáles Prada", "Instituto de Educación Superior Pedagógico", "Villa el Salvador", ["Educación Inicial", "Educación Primaria", "Educación Secundaria en cuatro (04) especialidades: Ciencias Sociales; Ciencia, Tecnología y Ambiente; Comunicación y Matemática"]).

iestp("Emilia Barcia Boniffatti", "Escuela de Educación Superior", "Cercado de Lima", ["Educación Inicial"]).


ubicacion(X, L) :-
    findall(Y, iestp(Y, X, _, _), L).

carrera_ubicacion(X, Y, Z) :-
    findall(A, (iestp(A, Y, _, B), member(X, B)), Z).

carrera_cono(X, Y, Z, C) :-
    findall(A, (iestp(A, Y, _, B), member(X, B)), Z),
    length(Z, C).

carrera_distrito(X, Y, Z, C) :-
    findall(A, (iestp(A, _, Y, B), member(X, B)), Z),
    length(Z, C).

carreras_comun(IESTP1, IESTP2, ListaCarreras) :-
    iestp(IESTP1, _, _, Carreras1),
    iestp(IESTP2, _, _, Carreras2),
    findall(Carrera, (member(Carrera, Carreras1), member(Carrera, Carreras2)), ListaCarreras).
