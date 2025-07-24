%EXEMPLO 2: COMPUTADOR
%OBJETIVO
causadopor(X,Y) :- causa(Y, X); causa(Z, X), causadopor(Z, Y).

%FATOS
causa(muitas_janelas, falta_ram).
causa(muitos_arquivos, disco_cheio).
causa(falta_ram, swap).
causa(swap, muitos_arquivos).
causa(swap, lento).
causa(indexacao, lento).
causa(sem_energia, nao_liga).
causa(fora_da_tomada, sem_energia).

%predicado auxiliar
listar_causas(Problema) :-
   findall(X, causadopor(Problema, X), Causas),
   format('Causas de ~w: ~w~n', [Problema, Causas]).