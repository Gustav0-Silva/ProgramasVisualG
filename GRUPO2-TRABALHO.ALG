Algoritmo "Grupo2-Trabalho"
// Descri��o   : Armazena dados dos funcion�rios
// Autor(a)    : Eder, Gustavo, Maur�cio, Pedro e Sheila
// Data atual  : 11/03/2021
Var

   dados: vetor [1..5 , 1..4] de caractere

   func, ciclo, fim, del, cad, tag : inteiro
   busca_1, busca_2 : caractere


Inicio

   func := 1
   del :=1
   cad :=0

   escreval ("Bem vindo ao banco de dados do Grupo 2")
   escreval (" ")
   escreval ("-----------------------------------")
   escreval (" ")


   enquanto ciclo <> 4 fa�a

      escreval ("Por favor, escolha qual fun��o deseja acessar")
      escreval ("1":15, "Cadastrar funcion�rios")
      escreval ("2":15, "Deletar funcion�rio")
      escreval ("3":15, "Pesquisar funcion�rio")
      escreval ("4":15, "Sair do banco de dados")
      escreval (" ")
      leia (ciclo)

      se (ciclo <> 1) e (ciclo <> 2) e (ciclo <> 3) e (ciclo <>4) entao
         limpatela ()
         escreval ("Desculpe, fun��o n�o autorizada no sistema, tente novamente")
         escreval (" ")
         escreval ("-----------------------------------")
      fimse


      escolha ciclo

      caso 1
         limpatela ()

         escreval ("Cadastro de clientes")
         escreval (" ")
         escreval ("Ol�! Digite por favor, quantos funcion�rios deseja cadastrar")
         leia (fim)
         cad := cad+fim

         se cad <= 5 entao


            escreval ("------------------------------------")

            para func de func at� fim fa�a

               escreval ("Dados do funcion�rio")

               escreva ("Nome: ")
               leia (dados[func,1])

               escreva ("Fun��o: ")
               leia (dados[func,2])

               escreva ("Idade: ")
               leia (dados[func,3])

               escreva ("Sal�rio: ")
               leia (dados[func,4])

               escreval (" ")
               escreval ("------------------------------------")
               escreval (" ")

            fimpara

         fimse

         se (fim = 0) ou (cad > 5) entao

            escreval ("Desculpe, valor n�o autorizado ou excede a capacidade do banco")
            cad := cad-fim
            escreval ("Atualmente, o banco tem ", cad, " cadastros e comporta 5")
            escreval ("")
            
         fimse


      caso 2
         limpatela ()

         escreval ("Deletar Funcion�rio")
         escreval (" ")
         escreval ("Por favor, digite o nome que deseja deletar: ")
         leia (busca_1)

         //compara��o
         para func de func ate cad fa�a

            busca_2 := dados[func,1]

            //funcion�rio encontrado
            se busca_1 = busca_2 entao

               para func de func ate func fa�a
                  para del de 1 ate 4 fa�a

                     dados[func,del]:=""

                  fimpara
               fimpara

               escreval (" ")
               escreval ("Funcion�rio encontrado no banco de dados e deletado")

            fimse

            //funcion�rio n�o encontrado
            se func = fim entao
               escreval (" ")
               escreval ("Desculpe, funcion�rio n�o encontrado em nosso banco de dados")
               escreval (" ")
               escreval ("------------------------------------")
               escreval (" ")
            fimse

         fimpara

      caso 3
         limpatela()


         escreval ("Busca por nome")
         escreval (" ")
         escreva ("Por favor, digite o nome que deseja procurar: ")
         leia (busca_1)
         func :=1

         enquanto busca_1 <> busca_2 fa�a

            //compara��o
            busca_2 := dados[func,1]

            //funcion�rio encontrado
            se busca_1 = busca_2 entao
               escreval (" ")
               escreval ("Funcion�rio encontrado no banco de dados")
               escreval ("Nome":15, "Fun��o":15, "Idade":15, "Sal�rio")
               escreval (dados[func,1]:15, dados[func,2]:15, dados[func,3]:15, dados[func,4])
               escreval (" ")
               escreval ("------------------------------------")
               escreval (" ")
               tag := 2
            fimse

            //funcion�rio n�o encontrado
            se (func = fim) e (tag<>2) entao
               escreval (" ")
               escreval ("Desculpe, funcion�rio n�o encontrado em nosso banco de dados")
               busca_2 := busca_1
               escreval (" ")
               escreval ("------------------------------------")
               escreval (" ")
               tag := 0
            fimse
            func:=func+1
            tag :=0

         fimenquanto
         
         func:=1


      fimescolha

   fimenquanto


Fimalgoritmo