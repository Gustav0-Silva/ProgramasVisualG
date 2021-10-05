Algoritmo "BancoDeDados_Ozzy"
// Descrição   : Armazena dados dos funcionários
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
   escreval ("Função")
   escreval ("Idade")
   escreval ("Sexo")
   escreval ("Salário")
   escreval (" ")
   escreval ("------------------------------------")
   escreval (" ")

   para func de 1 até 5 faça

      escreval ("Funcionário número ", func)

      escreva ("Nome: ")
      leia (textos[func,1])

      escreva ("Função: ")
      leia (textos[func,2])

      escreva ("Idade: ")
      leia (val_i[func,1])

      escreva ("Sexo: ")
      leia (textos[func,3])

      escreva ("Salário: ")
      leia (val_r[func,1])

      escreval (" ")
      escreval ("------------------------------------")
      escreval (" ")

   fimpara

   escreval ("Apresentação de dados")
   escreval (" ")
   escreval ("Nome":15, "Função":15, "Idade":15, "Sexo":15, "Salário")

   para func de 1 até 5 faça

      escreval (textos[func,1]:15, textos[func,2]:15, val_i[func,1]:15, textos[func,3]:15, val_r[func,1])

   fimpara




Fimalgoritmo