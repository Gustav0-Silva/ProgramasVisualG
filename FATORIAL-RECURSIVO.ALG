Algoritmo "semnome"
//
//
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/03/2021
Var
   numero:

funcao fatorial (num: inteiro) : inteiro
inicio
   se (num=1) ou (num=0) entao

      retorne 1

   senao

      retorne num*fatorial (num-1)

   fimse
fimfuncao

Inicio

   escreval ("Digite um n�mero: ")
   leia (numero)

   escreval (numero, "!=", fatorial(numero)


Fimalgoritmo