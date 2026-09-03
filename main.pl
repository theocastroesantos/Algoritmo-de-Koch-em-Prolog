:- module(principal, [gerar_questionario/3]).
:- use_module(tabela_morse).
:- use_module(dcg_morse).
:- use_module(treinador_koch).

gerar_questionario(Nivel, Palavra, SinaisMorse) :-
    caracteres_do_nivel(Nivel, Permitidos),
    palavra_valida(Palavra, Permitidos),
    phrase(frase_morse(Palavra), SinaisMorse).