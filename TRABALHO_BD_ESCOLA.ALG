Algoritmo "Trabalho_BD_Escola"
// Descrição   : Armazena dados dos alunos
// Autor(a)    : Carlos, Gustavo, Maurício
// Data atual  : 11/03/2021

funcao pesquisa (c:inteiro):inteiro

inicio

   pesq:=1

   para pesq de 1 ate 15 faca
      se (dados [pesq,c] = busca_2) entao
         tag := 1
         retorne pesq
      fimse
   fimpara

   se tag <> 1 entao
      tag:=0
      retorne 0
   fimse

fimfuncao



procedimento retorna_tabela (): caractere
inicio

   escreval ("Selecione o modo de pesquisa")
   escreval ("1":15, "Pesquisa por matrícula")
   escreval ("2":15, "Pesquisa por nome")
   escreval ("4":15, "Pesquisa por telefone")
   escreval ("5":15, "Pesquisa por responsável")
   escreval ("6":15, "Pesquisa por e-mail")
   escreval ("7":15, "Pesquisa por endereço")

fimprocedimento


funcao seletor_escrita (n:inteiro): caractere
inicio
   escolha n

   caso 1
      retorne "Matrícula: "

   caso 2
      retorne "Nome: "

   caso 3
      retorne "Idade: "

   caso 4
      retorne "Telefone: "

   caso 5
      retorne "Responsável: "

   caso 6
      retorne "E-mail: "

   caso 7
      retorne "Endereço :"

   caso 8
      retorne "Cidade: "

   caso 9
      retorne "Serie (1, 2 ou 3): "

   caso 10
      retorne "Turma: "

   caso 11
      retorne "Mensalidade: "

   fimescolha

fimfuncao

Var

   dados: vetor [1..15 , 1..11] de caractere

   aln, ciclo, fim, del, cad, tag, infos, pesq, retorno_pesq, busca_1 : inteiro
   busca_2 : caractere


Inicio

   aln := 1
   del :=1
   cad :=0
   infos :=1

   escreval ("Bem vindo ao banco da Escola Monica Rambeau")
   escreval (" ")
   escreval ("-----------------------------------")
   escreval (" ")


   enquanto ciclo <> 5 faça

      escreval ("Por favor, escolha qual função deseja acessar")
      escreval ("1":15, "Cadastrar aluno")
      escreval ("2":15, "Deletar informações")
      escreval ("3":15, "Pesquisar informações")
      escreval ("4":15, "Atualizar Informações")
      escreval ("5":15, "Sair do banco de dados")
      escreval (" ")
      leia (ciclo)

      se (ciclo <> 1) e (ciclo <> 2) e (ciclo <> 3) e (ciclo <>4) e (ciclo <> 5) entao
         limpatela ()
         escreval ("Desculpe, função não autorizada no sistema, tente novamente")
         escreval (" ")
         escreval ("-----------------------------------")
      fimse

      escolha ciclo

      caso 1
         limpatela ()
         escreval ("Cadastro de alunos")
         escreval (" ")
         escreval ("Olá! Digite por favor, quantos alunos deseja cadastrar")
         leia (fim)
         cad := cad+fim

         infos:=1

         se cad <= 15 entao


            escreval ("------------------------------------")

            para aln de aln até fim faça
               escreval ("Dados do aluno")

               para infos de 1 ate 11 faça

                  se infos <> 11 então
                     escreva (seletor_escrita(infos))
                     leia (dados [aln,infos])
                  fimse

                  se infos = 11 entao

                     se (dados [aln,9] = "1") entao
                        dados[aln,infos] := " R$ 600,00"
                        escreva (seletor_escrita(infos), dados[aln,infos])
                     fimse

                     se (dados [aln,9] = "2") entao
                        dados[aln,infos] := " R$ 500,00"
                        escreva (seletor_escrita(infos), dados[aln,infos])
                     fimse

                     se (dados [aln,9] = "3") entao
                        dados[aln,infos] := " R$ 350,00"
                        escreva (seletor_escrita(infos), dados[aln,infos])
                     fimse

                  fimse

               fimpara

               escreval (" ")
               escreval ("------------------------------------")
               escreval (" ")
               aln:=aln+1
            fimpara

         fimse

         se (fim = 0) ou (cad > 15) entao

            escreval ("Desculpe, valor não autorizado ou excede a capacidade do banco")
            cad := cad-fim
            escreval ("Atualmente, o banco tem ", cad, " cadastros e comporta 5")
            escreval ("")

         fimse


      caso 2
         limpatela ()
         del:=1
         escreval ("Deletar aluno")
         escreval (" ")
         retorna_tabela()
         leia (busca_1)

         se (busca_1 = 1) ou (busca_1 = 2) ou (busca_1 = 3) ou (busca_1 = 4) ou (busca_1 = 5) ou (busca_1 = 6) entao
            escreval ("Digite a identificação selecionada")
            leia (busca_2)
            retorno_pesq := pesquisa (busca_1)

            se tag = 1 entao
               para del de 1 ate 11 faça
                  dados[retorno_pesq,del] := ""
               fimpara
               escreval (" ")
               escreval ("Aluno encontrado no banco de dados e deletado")
               escreval (" ")
               escreval ("------------------------------------")
               escreval (" ")
               tag := 3
            fimse

            se tag =0 entao
               escreval (" ")
               escreval ("Desculpe, aluno não encontrado em nosso banco de dados")
               escreval (" ")
               escreval ("------------------------------------")
               escreval (" ")

            fimse

         senao
            escreval (" ")
            escreval ("Desculpe, função não autorizada no sistema")
            escreval (" ")
            escreval ("------------------------------------")
            escreval (" ")

         fimse

      caso 3
         limpatela ()
         del:=1
         escreval ("Pesquisar aluno")
         escreval (" ")
         retorna_tabela()
         leia (busca_1)

         se (busca_1 = 1) ou (busca_1 = 2) ou (busca_1 = 3) ou (busca_1 = 4) ou (busca_1 = 5) ou (busca_1 = 6) entao
            escreval ("Digite a identificação selecionada")
            leia (busca_2)
            retorno_pesq := pesquisa (busca_1)

            se tag = 1 entao
               escreval ("Aluno encontrado! as informações são: ")
               para del de 1 ate 11 faça
                  escreval (dados[retorno_pesq,del])
               fimpara
               escreval ("------------------------------------")
               escreval (" ")
               tag := 3
            fimse
            se tag =0 entao
               escreval (" ")
               escreval ("Desculpe, aluno não encontrado em nosso banco de dados")
               escreval (" ")
               escreval ("------------------------------------")
               escreval (" ")
            fimse

         senao
            escreval (" ")
            escreval ("Desculpe, função não autorizada no sistema")
            escreval (" ")
            escreval ("------------------------------------")
            escreval (" ")

         fimse

      caso 4
         limpatela ()
         escreval ("Atualizar informações")
         escreval (" ")
         retorna_tabela()
         leia (busca_1)

         se (busca_1 = 1) ou (busca_1 = 2) ou (busca_1 = 3) ou (busca_1 = 4) ou (busca_1 = 5) ou (busca_1 = 6) entao
            escreval ("Digite a identificação selecionada")
            leia (busca_2)
            retorno_pesq := pesquisa (busca_1)


            se tag = 1 entao
               infos:=1
               escreval ("Por favor, digite as informações que deseja atualizar: ")

               para infos de 1 ate 11 faça

                  se infos <> 11 então
                     escreva (seletor_escrita(infos))
                     leia (dados [retorno_pesq,infos])
                  fimse

                  se infos = 11 entao

                     se (dados [retorno_pesq,9] = "1") entao
                        dados[retorno_pesq,infos] := " R$ 600,00"
                        escreva (seletor_escrita(infos), dados[retorno_pesq,infos])
                     fimse

                     se (dados [retorno_pesq,9] = "2") entao
                        dados[retorno_pesq,infos] := " R$ 500,00"
                        escreva (seletor_escrita(infos), dados[retorno_pesq,infos])
                     fimse

                     se (dados [retorno_pesq,9] = "3") entao
                        dados[retorno_pesq,infos] := " R$ 350,00"
                        escreva (seletor_escrita(infos), dados[retorno_pesq,infos])
                     fimse

                  fimse
               fimpara
               escreval ("")
               escreval ("Informações atualizadas com sucesso!")
               escreval ("")
               escreval ("------------------------------------")
               escreval (" ")
               tag := 3
            fimse
            
            se tag =0 entao
               escreval (" ")
               escreval ("Desculpe, aluno não encontrado em nosso banco de dados")
               escreval (" ")
               escreval ("------------------------------------")
               escreval (" ")

            fimse

         senao
            escreval (" ")
            escreval ("Desculpe, função não autorizada no sistema")
            escreval (" ")
            escreval ("------------------------------------")
            escreval (" ")

         fimse
      fimescolha

   fimenquanto


Fimalgoritmo