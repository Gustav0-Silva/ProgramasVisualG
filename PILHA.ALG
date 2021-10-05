Algoritmo "Pilha"

Var
   pilha: vetor[0..49] de inteiro
   tamanho, resp, remo, li: inteiro
   continuar: caractere

   //procedimento inserir
procedimento inserir()
inicio
   se tamanho = 50 entao
      escreval("A pilha está cheia")
   senao
      escreval("Digite o valor que deseja inserir na pilha")
      leia(pilha[tamanho])
      tamanho <- tamanho + 1
   fimse
fimprocedimento



procedimento Topo()
inicio
   Escreval("MENU")
   Escreval("1- Inserir":35)
   Escreval("2- Remover":35)
   escreval("3 - Esvaziar":35)
   escreval("4 - Verificar vazio":35)
   escreval("5 - Listar pilha":35)
   escreval("6 - Sair":35)
   escreval("")
   Escreval("Digite a opção desejada")
   leia(resp)
fimprocedimento

//funcao para remover
funcao remover(): inteiro
inicio
   se tamanho > 0 entao
      tamanho <- tamanho - 1
      retorne pilha[tamanho]
   senao
      escreval("Pilha vazia")
      retorne - 1
   fimse
fimfuncao

Inicio



   enquanto resp <> 6 faça

      Topo()
      limpatela ()

      se resp = 1 entao
         inserir()
      fimse

      se resp = 2 entao
         remo:=remover()

         se remo <> -1 entao
            escreval ("O item foi removido da pilha, o último número agora é: ", remo)
            escreval ("")
         fimse
      fimse

      se resp = 3 entao
         tamanho:=0
         escreval ("A pilha foi esvaziada")
      fimse

      se resp = 4 entao
         se tamanho=0 entao
            escreval ("A pilha está vazia")
         fimse

         se tamanho <> 0 entao
            escreval ("A pilha não está vazia e conta com ", tamanho+1, " posições ocupadas")
            tamanho=tamanho-1
         fimse

      fimse

      se resp = 5 entao
      li:=0
         para li de 0 ate tamanho faça
         escreval ("Posição ",li, " armazena o número: ", pilha[li])
         fimpara
      fimse



   fimenquanto

Fimalgoritmo