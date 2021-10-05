Algoritmo "BancoDeDados_Ozzy"
// Descrição   : Armazena dados dos funcionários
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
   escreval ("Função")
   escreval ("Idade")
   escreval ("Sexo")
   escreval ("Salário")
   escreval (" ")
   escreval ("------------------------------------")
   escreval (" ")

   para func de 1 até 5 faça
      escreval ("Funcionário número ", func)
      para dado de 1 até 5 faça

         leia (dados[func,dado])

      fimpara
      
      escreval (" ")
      escreval ("------------------------------------")
      escreval (" ")

   fimpara

   escreval ("Apresentação de dados")
   escreval (" ")
   escreval ("Nome":15, "Função":15, "Idade":15, "Sexo":15, "Salário")

   para func de 1 até 5 faça

      escreval (dados[func,1]:15, dados[func,2]:15, dados[func,3]:15, dados[func,4]:15, dados[func,5])

   fimpara




Fimalgoritmo