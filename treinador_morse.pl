:- module(treinador_koch, [caracteres_do_nivel/2, palavra_valida/2]).
:- use_module(tabela_morse).

caracteres_do_nivel(Nivel, Caracteres) :-
    sequencia_koch(ListaCompleta),
    length(Caracteres, Nivel),
    append(Caracteres, _, ListaCompleta).

palavra_valida([], _Permitidos).
palavra_valida([Caractere|Caracteres], Permitidos) :-
    member(Caractere, Permitidos),
    palavra_valida(Caracteres, Permitidos).