Algoritmo "BancoDeDados_Ozzy"
// Descri��o   : Armazena dados dos funcion�rios
// Autor(a)    : Gustavo Silva
// Data atual  : 05/03/2021
Var

   dados: vetor [1..5 , 1..5] de caractere
   func, dado : inteiro


Inicio

   escreval ("Bem vindo ao banco de dados da Ozzy")
   escreval (" ")
   escreval ("-----------------------------------")
   escreval (" ")
   escreval ("Por favor, informe os dados na seguinte ordem:")
   escreval (" ")
   escreval ("Nome")
   escreval ("Fun��o")
   escreval ("Idade")
   escreval ("Sexo")
   escreval ("Sal�rio")
   escreval (" ")
   escreval ("------------------------------------")
   escreval (" ")

   para func de 1 at� 5 fa�a
      escreval ("Funcion�rio n�mero ", func)
      para dado de 1 at� 5 fa�a

         leia (dados[func,dado])

      fimpara
      
      escreval (" ")
      escreval ("------------------------------------")
      escreval (" ")

   fimpara

   escreval ("Apresenta��o de dados")
   escreval (" ")
   escreval ("Nome":15, "Fun��o":15, "Idade":15, "Sexo":15, "Sal�rio")

   para func de 1 at� 5 fa�a

      escreval (dados[func,1]:15, dados[func,2]:15, dados[func,3]:15, dados[func,4]:15, dados[func,5])

   fimpara




Fimalgoritmo