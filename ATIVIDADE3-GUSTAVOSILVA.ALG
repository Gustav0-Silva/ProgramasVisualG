Algoritmo "Atividade3-GustavoSilva"
//  
//  
// Descri��o   : Pedido de compra
// Autor(a)    : Gustavo Silva
// Data atual  : 19/01/2021
Var

   prod : caractere
   valor : real
   quant : inteiro
   ciclo : caractere
   caderno : real
   borracha : real
   caneta : real
   total : real


Inicio

//valores
  caderno := 3.5 (2:2)
  borracha := 2.5 (2:2)
  caneta := 1.5 (2:2)
  total := 0 (2:2)
  ciclo := ("n")
  
  
 //programa��o

      escreval ("Bem vindo ao gerador de pedidos da Ozzy!")
      escreval ("----------------------------")
      escreval ("Por favor, digite o que for solicitado para gerar seu pedido")

      
              enquanto (ciclo <> "s" ) faca

                       escreval ("----------------------------")
                       escreva ("Produto: ")
                       leia (prod)

//caderno
                       se (prod = "Caderno") ou (prod = "caderno") entao

                          escreval ("Pre�o unit�rio: R$ " ,caderno)
                          escreva ("Por favor, digite a quantidade desejada: ")
                          leia (quant)
                          total := total + (quant * caderno)

                       fimse
//borracha
                       se (prod = "Borracha") ou (prod = "borracha") entao

                          escreval ("Pre�o unit�rio: R$" ,borracha)
                          escreva ("Por favor, digite a quantidade desejada: ")
                          leia (quant)
                          total := total + (quant * borracha)
//caneta
                       fimse

                       se (prod = "caneta") ou (prod = "Caneta") entao

                          escreval ("Pre�o unit�rio: R$" ,caneta)
                          escreva ("Por favor, digite a quantidade desejada: ")
                          leia (quant)
                          total := total + (quant * caneta)
                          
                       fimse
//produto n�o cadastrado
                       se (prod <> "caneta") e (prod <> "Caneta") e (prod <> "Borracha") e (prod <> "borracha") e (prod <> "caderno") e (Prod <> "Caderno") entao
                       escreval ("Desculpe, produto n�o cadastrado no banco de dados, tente novamente")

                       fimse
                       
                       
                       
      escreval ("----------------------------")
      escreval ("Deseja encerrar sua compra?")
      escreval ("Digite: s / n")
      leia (ciclo)

             fimenquanto
             
           escreval ("----------------------------")
           escreval ("Obrigado por comprar na Ozzy!")
           escreval ("O valor total da sua compra � de: R$", total)


Fimalgoritmo