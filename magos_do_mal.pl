%EXEMPLO 1: MAGOS DO MAL
%OBJETIVOS
necromante(X) :- invoca_espiritos(X), reside_em_lugares_sombrios(X), \+ queima(X).
bruxa(X) :- possui_magia_proibida(X), reside_em_lugares_sombrios(X), queima(X).

%REGRAS
%X invoca_espiritos se possui_magia_proibida.
invoca_espiritos(X) :- possui_magia_proibida(X).

%X possui_magia_proibida (X) se estuda_grimorios_amaldicoados.
possui_magia_proibida(X) :- estuda_grimorios_amaldicoados(X).

%X reside_em_lugares_sombrios se vive_em_cemiterio OU vive_em_catacumbas OU vive_na_floresta.
%ponto e vírgula (;) representa o operador OR.
reside_em_lugares_sombrios(X) :- vive_em_cemiterio(X); vive_em_catacumbas(X); vive_na_floresta(X).

%X queima se for de madeira
queima(X) :- madeira(X).
madeira(X) :- flutua(X).
flutua(X) :- mesmo_peso(X, tronco).

%FATOS:
%sobre morthos
estuda_grimorios_amaldicoados(morthos).
vive_em_cemiterio(morthos).
vive_em_catacumbas(morthos).
mesmo_peso(morthos, palha).
%sobre lila
estuda_grimorios_amaldicoados(lila).
vive_na_floresta(lila).
mesmo_peso(lila, tronco).