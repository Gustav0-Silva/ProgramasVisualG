Algoritmo "BancoDeDados_Ozzy"
// Descrição   : Armazena dados dos funcionários
// Autor(a)    : Gustavo Silva
// Data atual  : 05/03/2021
Var

   //Caso haja necessidade de cadastrar mais do que 30 funcionários
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

   //ciclo de repetição do programa até que o usuário solicite o fim
   enquanto ciclo <> 4 faça

      escreval ("Por favor, escolha qual função deseja acessar")
      escreval ("1":15, "Cadastrar funcionários")
      escreval ("2":15, "Apresentar funcionários cadastrados")
      escreval ("3":15, "Buscar funcionário pelo nome")
      escreval ("4":15, "Sair do banco de dados")
      escreval (" ")
      leia (ciclo)

      //Implemento para exibir uma mensagem caso o usuário digite um
      //valor diferente dos que são colocados como opção
      se (ciclo <> 1) e (ciclo <> 2) e (ciclo <> 3) e (ciclo <>4) entao
         limpatela ()
         escreval ("Desculpe, função não autorizada no sistema, tente novamente")
         escreval (" ")
         escreval ("-----------------------------------")
      fimse


      escolha ciclo

         //código para adicionar clientes no banco de dados, um por vez
      caso 1
         limpatela ()

         escreval ("Cadastro de clientes")
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

         para func de func até fim faça

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

         func := func +1
         fim := fim+1

         //código para apresentar os clientes já cadastrados
      caso 2
         limpatela ()

         escreval ("Apresentação de dados")
         escreval (" ")
         escreval ("Nome":15, "Função":15, "Idade":15, "Sexo":15, "Salário")

         fim := fim-1
         para func de 1 até fim faça

            escreval (textos[func,1]:15, textos[func,2]:15, val_i[func,1]:15, textos[func,3]:15, val_r[func,1])

         fimpara
         fim :=fim+1

         escreval (" ")
         escreval ("------------------------------------")
         escreval (" ")

         //código de busca pelo nome
      caso 3
         limpatela()

         //parte implementada para manter a sequência numérica
         //dentro do código de cadastro, "salvando" a posição atual
         save:=fim
         func:=1
         fim:=fim+1

         escreval ("Busca por nome")
         escreval (" ")
         escreva ("Por favor, digite o nome que deseja procurar: ")
         leia (busca_1)

         //condição repetida fora do ciclo, caso o nome procurado seja
         //o primeiro nome buscado na matriz
         se busca_1 = busca_2 entao
            escreval (" ")
            escreval ("Funcionário encontrado no banco de dados")
            escreval ("Nome":15, "Função":15, "Idade":15, "Sexo":15, "Salário")
            escreval (textos[func,1]:15, textos[func,2]:15, val_i[func,1]:15, textos[func,3]:15, val_r[func,1])
            escreval (" ")
            escreval ("------------------------------------")
            escreval (" ")
         fimse

         enquanto busca_1 <> busca_2 faça

            //comparação
            busca_2 := textos[func,1]

            //funcionário encontrado
            se busca_1 = busca_2 entao
               escreval (" ")
               escreval ("Funcionário encontrado no banco de dados")
               escreval ("Nome":15, "Função":15, "Idade":15, "Sexo":15, "Salário")
               escreval (textos[func,1]:15, textos[func,2]:15, val_i[func,1]:15, textos[func,3]:15, val_r[func,1])
               escreval (" ")
               escreval ("------------------------------------")
               escreval (" ")
            fimse

            //funcionário não encontrado
            se func = fim entao
               escreval (" ")
               escreval ("Desculpe, funcionário não encontrado em nosso banco de dados")
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