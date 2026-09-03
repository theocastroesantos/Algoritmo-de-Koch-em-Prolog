:- module(dcg_morse, [frase_morse//1]).
:- use_module(tabela_morse).

frase_morse([]) --> [].
frase_morse([Caractere|Caracteres]) -->
    { morse(Caractere, Sinais) },
    Sinais,
    [espaco],
    frase_morse(Caracteres).