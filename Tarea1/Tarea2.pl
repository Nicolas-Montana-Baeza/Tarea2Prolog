hermano(alberto).
hermano(carlos).
hermano(luis).

dia(lunes).
dia(martes).
dia(miercoles).
dia(jueves).
dia(viernes).
dia(sabado).
dia(domingo).

frase('Hoy es el tercer dia que miento').
frase('Hola, soy alberto').
frase('Mañana será sabado').

miente(alberto,lunes).
miente(alberto,martes).
miente(alberto, miercoles).

miente(carlos,miercoles).
miente(carlos,jueves).
miente(carlos,viernes).

miente(luis,viernes).
miente(luis,sabado).
miente(luis,domingo).

honesto(alberto,jueves).
honesto(alberto,viernes).
honesto(alberto,sabado).
honesto(alberto,domingo).

honesto(carlos,lunes).
honesto(carlos,martes).
honesto(carlos,sabado).
honesto(carlos,domingo).

honesto(luis,lunes).
honesto(luis,martes).
honesto(luis,miercoles).
honesto(luis,jueves).

frase1(H,D,F):-
frase(F),
frase(F)==frase('Hoy es el tercer dia que miento'),
hermano(H),
dia(D),
miente(H,D)\=miente(alberto, miercoles),
miente(H,D)\=miente(carlos, viernes), 
miente(H,D)\=miente(luis, domingo),
honesto(H,D)\=honesto(alberto,jueves),
honesto(H,D)\=honesto(alberto,viernes),
honesto(H,D)\=honesto(alberto,sabado),
honesto(H,D)\=honesto(alberto,domingo),

honesto(H,D)\=honesto(carlos,lunes),
honesto(H,D)\=honesto(carlos,martes),
honesto(H,D)\=honesto(carlos,sabado),
honesto(H,D)\=honesto(carlos,domingo),

honesto(H,D)\=honesto(luis,lunes),
honesto(H,D)\=honesto(luis,martes),
honesto(H,D)\=honesto(luis,miercoles),
honesto(H,D)\=honesto(luis,jueves).

frase2(H,D,F):-
frase(F),
frase(F)==frase('Hola, soy alberto'),
dia(D),
hermano(H),
miente(H,D)\=miente(alberto,D).

frase3(H,D,F):-
frase(F),
frase(F)==frase('Mañana será sabado'),
hermano(H),
dia(D),
honesto(H,viernes),
honesto(H,D)\=honesto(alberto,jueves),
honesto(H,D)\=honesto(alberto,sabado),
honesto(H,D)\=honesto(alberto,domingo),

honesto(H,D)\=honesto(carlos,lunes),
honesto(H,D)\=honesto(carlos,martes),
honesto(H,D)\=honesto(carlos,sabado),
honesto(H,D)\=honesto(carlos,domingo),

honesto(H,D)\=honesto(luis,lunes),
honesto(H,D)\=honesto(luis,martes),
honesto(H,D)\=honesto(luis,miercoles),
honesto(H,D)\=honesto(luis,jueves).

mienten(H1,H2,D):-
miente(H1,D),
miente(H2,D),
H1\=H2.

respuestaFinal(DIA,HRMNO1,FRASE1,HRMNO2,FRASE2,HRMNO3,FRASE3):-
dia(DIA),
hermano(HRMNO1),
hermano(HRMNO2),
hermano(HRMNO3),
HRMNO1\=HRMNO2,
HRMNO3\=HRMNO2,
HRMNO1\=HRMNO3,
mienten(HRMNO1,HRMNO2,DIA),
frase1(HRMNO1,DIA,FRASE1),
frase2(HRMNO2,DIA,FRASE2),
frase3(HRMNO3,DIA,FRASE3).