%EXEMPLO 3: CIUMES
%objetivo
a_detesta_c(A, C) :-
   a_ama_b(A, B),
   a_ama_b(C, B),
   A \= C.

%fatos
a_ama_b(vicentaum, carolaine).
a_ama_b(jovildo, carolaine).
a_ama_b(xispaulo, toledinho).
a_ama_b(toledinho, xispaulo).
a_ama_b(toledinho, carolaine).

