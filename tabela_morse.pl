:- module(tabela_morse, [morse/2, sequencia_koch/1]).

sequencia_koch(['K', 'M', 'R', 'S', 'U', 'A', 'P', 'T', 'L', 'O', 'W', 'I', 'N', 'J', 'E', 'F']).

morse('K', [traco, ponto, traco]).
morse('M', [traco, traco]).
morse('R', [ponto, traco, ponto]).
morse('S', [ponto, ponto, ponto]).
morse('U', [ponto, ponto, traco]).
morse('A', [ponto, traco]).
morse('P', [ponto, traco, traco, ponto]).
morse('T', [traco]).