Algoritmo "BancoDeDados_Ozzy"
// Descri��o   : Armazena dados dos funcion�rios
// Autor(a)    : Gustavo Silva
// Data atual  : 05/03/2021
Var

   //Caso haja necessidade de cadastrar mais do que 30 funcion�rios
   //deve ser alterado abaixo nas matrizes

   textos: vetor [1..30 , 1..3] de caractere
   val_i: vetor [1..30 , 1..1] de inteiro
   val_r: vetor [1..30 , 1..1] de real

   func, ciclo, fim, save : inteiro
   busca_1, busca_2 : caractere


Inicio

   func := 1
   fim :=1

   escreval ("Bem vindo ao banco de dados da Ozzy")
   escreval (" ")
   escreval ("-----------------------------------")
   escreval (" ")

   //ciclo de repeti��o do programa at� que o usu�rio solicite o fim
   enquanto ciclo <> 4 fa�a

      escreval ("Por favor, escolha qual fun��o deseja acessar")
      escreval ("1":15, "Cadastrar funcion�rios")
      escreval ("2":15, "Apresentar funcion�rios cadastrados")
      escreval ("3":15, "Buscar funcion�rio pelo nome")
      escreval ("4":15, "Sair do banco de dados")
      escreval (" ")
      leia (ciclo)

      //Implemento para exibir uma mensagem caso o usu�rio digite um
      //valor diferente dos que s�o colocados como op��o
      se (ciclo <> 1) e (ciclo <> 2) e (ciclo <> 3) e (ciclo <>4) entao
         limpatela ()
         escreval ("Desculpe, fun��o n�o autorizada no sistema, tente novamente")
         escreval (" ")
         escreval ("-----------------------------------")
      fimse


      escolha ciclo

         //c�digo para adicionar clientes no banco de dados, um por vez
      caso 1
         limpatela ()

         escreval ("Cadastro de clientes")
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

         para func de func at� fim fa�a

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

         func := func +1
         fim := fim+1

         //c�digo para apresentar os clientes j� cadastrados
      caso 2
         limpatela ()

         escreval ("Apresenta��o de dados")
         escreval (" ")
         escreval ("Nome":15, "Fun��o":15, "Idade":15, "Sexo":15, "Sal�rio")

         fim := fim-1
         para func de 1 at� fim fa�a

            escreval (textos[func,1]:15, textos[func,2]:15, val_i[func,1]:15, textos[func,3]:15, val_r[func,1])

         fimpara
         fim :=fim+1

         escreval (" ")
         escreval ("------------------------------------")
         escreval (" ")

         //c�digo de busca pelo nome
      caso 3
         limpatela()

         //parte implementada para manter a sequ�ncia num�rica
         //dentro do c�digo de cadastro, "salvando" a posi��o atual
         save:=fim
         func:=1
         fim:=fim+1

         escreval ("Busca por nome")
         escreval (" ")
         escreva ("Por favor, digite o nome que deseja procurar: ")
         leia (busca_1)

         //condi��o repetida fora do ciclo, caso o nome procurado seja
         //o primeiro nome buscado na matriz
         se busca_1 = busca_2 entao
            escreval (" ")
            escreval ("Funcion�rio encontrado no banco de dados")
            escreval ("Nome":15, "Fun��o":15, "Idade":15, "Sexo":15, "Sal�rio")
            escreval (textos[func,1]:15, textos[func,2]:15, val_i[func,1]:15, textos[func,3]:15, val_r[func,1])
            escreval (" ")
            escreval ("------------------------------------")
            escreval (" ")
         fimse

         enquanto busca_1 <> busca_2 fa�a

            //compara��o
            busca_2 := textos[func,1]

            //funcion�rio encontrado
            se busca_1 = busca_2 entao
               escreval (" ")
               escreval ("Funcion�rio encontrado no banco de dados")
               escreval ("Nome":15, "Fun��o":15, "Idade":15, "Sexo":15, "Sal�rio")
               escreval (textos[func,1]:15, textos[func,2]:15, val_i[func,1]:15, textos[func,3]:15, val_r[func,1])
               escreval (" ")
               escreval ("------------------------------------")
               escreval (" ")
            fimse

            //funcion�rio n�o encontrado
            se func = fim entao
               escreval (" ")
               escreval ("Desculpe, funcion�rio n�o encontrado em nosso banco de dados")
               busca_2 := busca_1
               escreval (" ")
               escreval ("------------------------------------")
               escreval (" ")
            fimse
            func:=func+1

         fimenquanto

         //ressetando como estava antes de entrar no ciclo
         fim:=save
         func:=save

      fimescolha

   fimenquanto


Fimalgoritmo