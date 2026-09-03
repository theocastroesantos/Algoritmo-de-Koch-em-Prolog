# Prolog Morse

Uma implementação focada no Método Koch para aprendizado de Código Morse, demonstrando a bidirecionalidade das Gramáticas de Cláusula Definitiva (DCGs), inspirado na aplicação pedagógica proposta por Markus Triska para o ensino de Prolog.

O mesmo programa que aplica as regras também deduz de trás para frente qual palavra produziu um determinado padrão de pulsos sonoros, eliminando a necessidade de escrever um algoritmo de decodificação exclusivo.

## Estrutura de Arquivos
* `tabela_morse.pl`: Tabela bidirecional de relações de caracteres morse e sequência oficial de Koch.
* `dcg_morse.pl`: Gramática (DCG) para conversão texto/sinal. Lida exclusivamente na lógica de sinais para traços, assim, uma frase morse é um caractere convertido, seguido por um espaço, seguido pelo resto da frase. 
* `treinador_koch.pl`: Lógica de restrição de domínio baseada no nível do usuário. Implementação do algoritmo de Koch que não entende a lógica formal de morse, apenas validação de subconjuntos de caracteres. Ao declara que palavra_valida([], _Permitidos)¨, institui-se a convenção de qualquer lista vazia sempre é válida. A regra seguinte: ¨palavra_valida([Caractere|Caracteres], Permitidos)¨ divide o problema em testar a cabeça da lista (Caractere) com member/2 e passar o restante do problema (Caracteres) de volta para a mesma regra.
* `main.pl`: Módulo de entrada para geração e decodificação de querys.

## Execução
Para executar a lógica do programa, execute num interpretador padrão de Prolog como SWI-Prolog o(s) seguintes comandos:

```prolog
$ swipl main.pl

?- gerar_questionario(2, ['K', 'M', 'K'], Sinais).
Sinais = [traco,ponto,traco,espaco,traco,traco,espaco,traco,ponto,traco,espaco].

?- gerar_questionario(2, Palavra, [traco,traco,espaco,traco,ponto,traco,espaco]).
Palavra = ['M', 'K'].
