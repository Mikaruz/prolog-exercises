paneton(normal, [
    "650 gr de harina",
    "130 gr de mantequilla",
    "160 gr de azúcar blanca de preferencia",
    "200 ml de leche casi una taza",
    "25 gr de levadura fresca",
    "2 cucharadas de vino dulce",
    "80 gr de pasas",
    "80 gr de frutas confitadas",
    "½ de esencia de chirimoya",
    "½ cáscara de una naranja picada en cuadritos pasada por agua caliente y luego macerada en copa de vino",
    "4 huevos",
    "3 gotas de colorante amarillo",
    "½ cucharadita de sal"
], [
    "En una taza diluye la levadura con leche, pero antes de esto caliéntala un poquito.",
    "En un tazón grande o bowl vierte la mantequilla, la harina cernida, el azúcar, la levadura con la leche tibia mezclada, el azúcar, la naranja macerada y los huevos, uno por uno. Así también la esencia de chirimoya, el vino dulce y el colorante amarillo.",
    "Estando todo bien mezclado pon esta masa encima de un superficie plana y amasa durante 30 minutos. Luego, enharina las frutas confitadas y las pasas y déjalas a un costado mientras sigues con la masa.",
    "Pon la masa de nuevo en el tazón grande y déjala reposando por 6 horas.",
    "Luego de este tiempo, retira la masa del recipiente y rómpela para quitarle el aire interno.",
    "Incorpora las frutas confitadas y las pasas junto con un poco de harina. Sigue amasando durante 10 minutos de manera que todo se distribuya equitativamente.",
    "Forma una bola grande y ponla en un molde especial para Panetón, estos tienen un material particular que no necesitan engrasarlos con mantequilla. Acomoda esta masa y haz un corte en cruz. Después, Unta en la parte superior con yema de huevo mezclada con un poco de leche.",
    "Calienta el horno 10 minutos antes de terminar a 400 ° luego baja esto a 200 ° al momento de poner el Panetón y quédate pendiente del horno. Hornéalo por 45 minutos y listo."
], 20).

paneton(vegano, [
    "500 gr. harina de fuerza",
    "1 taza panela",
    "1 taza bebida vegetal de soja templada",
    "20 gr. levadura fresca o 9 gramos de levadura seca",
    "Zumo y ralladura de media naranja",
    "1 cdta extracto de vainilla",
    "1/2 taza AOVE",
    "1 cdta sal",
    "Pasas",
    "2 cda agua",
    "50 gr. harina",
    "125 gr. agua",
    "125 gr. bebida vegetal"
], [
    "Primero vamos a preparar el tang zhong. Para ello añade el líquido a un cazo y espera a que se caliente. Añade la harina y baja el fuego a fuego medio. No dejes de remover la mezcla y cocina hasta que se forme un engrudo. Deja reposar para que se temple antes de añadir al resto de ingredientes.",
    "Mientras el tang zhong se templa, calienta la bebida de soja a unos 37º (la bebida tiene que estar templada, no caliente) y mezcla una cucharadita de panela y la levadura. Deja que se active la levadura durante 10 minutos.",
    "En un bol grande mezcla la harina, el resto de la panela y la ralladura de naranja. Reserva. Añade a otro bol el AOVE, el zumo de naranja y la vainilla y combina.",
    "Añade al bol de harina la mezcla húmeda, la bebida vegetal con la levadura, el tang zhong y la sal. Con ayuda de tus manos ve masajeando la masa durante 8-10 minutos, ve añadiendo las pasas en este tiempo mientras vas amasando. Este punto es importante ya que será donde empiece a formarse el gluten.",
    "Deja la masa en un bol engrasado con un poco de AOVE y deja reposar durante unas 2 horas en un lugar cálido. La masa estará lista una vez haya doblado su volumen. Esto depende de la temperatura que haga en tu casa.",
    "Una vez la masa haya doblado su volumen vuelve a amasar y vuelca la masa en tu molde para panettone (yo utilicé uno de papel), y deja que repose otros 30 minutos.",
    "Precalienta el horno a 190º con calor arriba y abajo. Pinta el panettone con una mezcla de bebida vegetal, AOVE y un poco de sirope para que se dore por encima. Hornea a 190º durante 15 minutos, luego baja la temperatura a 170º y hornea otros 25 minutos aproximadamente para que termine de hacerse). Antes de sacarlo del horno haz la prueba del palito, si sale limpio está listo.",
    "Deja enfriar en rejilla antes de probarlo."
], 30).

paneton(vegetariano, [
    "6 huevos",
    "4 manzanas peladas rojas",
    "1/2 taza de aceite de coco",
    "2 tazas de harina de coco",
    "1 taza de harina de almendras",
    "1 taza de frutas confitadas",
    "1 taza de frutos secos",
    "Almendras laminadas para decorar",
    "1 cdta. de canela",
    "1 cdta. de clavo de olor",
    "1 cdta. de esencia de almendras",
    "1 cdta. de cardamomo"
], [
    "En el procesador poner los huevos con las manzanas.",
    "Agregar los ingredientes secos, la fruta confitada y la esencia de almendras.",
    "Ubicar la masa en un molde cubierto con papel manteca para que no se pegue. Puede usar molde cuadrado o de panetón.",
    "Decorar con frutos secos. Hornear por 30 minutos a 170 ºC.",
    "En el caso de que desee endulzar, use azúcar de coco, agave o miel."
], 40).


cantidad_ingredientes(X, Y) :-
    paneton(X, I, _, _),
    length(I, Y).

agregar_ingrediente(P, I, X) :-
    paneton(P, L, _, _),
    X = [I | L].

calcular_precio([], 0).
calcular_precio([A | B], X) :-
    paneton(A, _, _, C),
    calcular_precio(B, Z),
    X is C + Z.

precio_paneton([], 0).
precio_paneton([X | Y], Z) :-
    calcular_precio([X | Y], Z).