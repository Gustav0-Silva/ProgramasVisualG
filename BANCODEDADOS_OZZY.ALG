Algoritmo "BancoDeDados_Ozzy"
// Descri��o   : Armazena dados dos funcion�rios
// Autor(a)    : Gustavo Silva
// Data atual  : 05/03/2021
Var

   textos: vetor [1..5 , 1..3] de caractere
   val_i: vetor [1..5 , 1..1] de inteiro
   val_r: vetor [1..5 , 1..1] de real

   func : inteiro


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

      escreva ("Nome: ")
      leia (textos[func,1])

      escreva ("Fun��o: ")
      leia (textos[func,2])

      escreva ("Idade: ")
      leia (val_i[func,1])

      escreva ("Sexo: ")
      leia (textos[func,3])

      escreva ("Sal�rio: ")
      leia (val_r[func,1])

      escreval (" ")
      escreval ("------------------------------------")
      escreval (" ")

   fimpara

   escreval ("Apresenta��o de dados")
   escreval (" ")
   escreval ("Nome":15, "Fun��o":15, "Idade":15, "Sexo":15, "Sal�rio")

   para func de 1 at� 5 fa�a

      escreval (textos[func,1]:15, textos[func,2]:15, val_i[func,1]:15, textos[func,3]:15, val_r[func,1])

   fimpara




Fimalgoritmo