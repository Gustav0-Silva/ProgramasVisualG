Algoritmo "GustavoSilva"
// Descri��o   : Confere se o sal�rio est� dentro de alguma faixa de valor
// e a categoriza dentro de nomes fantasias
// Autor(a)    : Gustavo Silva
// Data atual  : 18/01/2021
Var

   salario : real
   aprov : real
   faixaA : real
   faixaB : real
   nome : caractere

Inicio

      escreval ("Bem vindo a Ozzy distribui��es!")
      escreval ("")
      escreval ("Por favor, digite seu nome: ")
      leia (nome)
      escreval ("Por favor, digite o seu sal�rio: ")
      leia (salario)
      faixaA := 0.3
      faixaB := 0.35
      
      
      
           se (salario < 1000) entao
              escreval ("Desculpe " ,nome, ", n�o h� valor pr�-aprovado para compras")
              escreval ("")


   senao

           se (salario >= 1000) e (salario <=2999.99) entao
              aprov := salario * faixaA
              escreval("Parab�ns ", nome, ", voc� se enquadra no plano Esmeralda!")
              escreval("Seu limite de compras pr� aprovado � de: R$", aprov:5:2)
              escreval("Obrigado por comprar na Ozzy, volte sempre!")


   senao

           se (salario >= 3000) e (salario <=4999.99) entao
              aprov := salario * faixaB
              escreval("Parab�ns ", nome, ", voc� se enquadra no plano Rubi!")
              escreval("Seu limite de compras pr� aprovado � de: R$", aprov:5:2)
              escreval("Obrigado por comprar na Ozzy, volte sempre!")


   senao

           se (salario >= 5000) entao
           escreval("Parab�ns ", nome, ", voc� se enquadra no plano Safira!")
           escreval("Seu cadastro est� em an�lise personalizada da ger�ncia!")

   senao
        escreval("")

        fimse
        fimse
        fimse
        fimse
        


Fimalgoritmo


