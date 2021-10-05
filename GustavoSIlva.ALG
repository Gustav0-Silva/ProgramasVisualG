Algoritmo "GustavoSilva"
// Descrição   : Confere se o salário está dentro de alguma faixa de valor
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

      escreval ("Bem vindo a Ozzy distribuições!")
      escreval ("")
      escreval ("Por favor, digite seu nome: ")
      leia (nome)
      escreval ("Por favor, digite o seu salário: ")
      leia (salario)
      faixaA := 0.3
      faixaB := 0.35
      
      
      
           se (salario < 1000) entao
              escreval ("Desculpe " ,nome, ", não há valor pré-aprovado para compras")
              escreval ("")


   senao

           se (salario >= 1000) e (salario <=2999.99) entao
              aprov := salario * faixaA
              escreval("Parabéns ", nome, ", você se enquadra no plano Esmeralda!")
              escreval("Seu limite de compras pré aprovado é de: R$", aprov:5:2)
              escreval("Obrigado por comprar na Ozzy, volte sempre!")


   senao

           se (salario >= 3000) e (salario <=4999.99) entao
              aprov := salario * faixaB
              escreval("Parabéns ", nome, ", você se enquadra no plano Rubi!")
              escreval("Seu limite de compras pré aprovado é de: R$", aprov:5:2)
              escreval("Obrigado por comprar na Ozzy, volte sempre!")


   senao

           se (salario >= 5000) entao
           escreval("Parabéns ", nome, ", você se enquadra no plano Safira!")
           escreval("Seu cadastro está em análise personalizada da gerência!")

   senao
        escreval("")

        fimse
        fimse
        fimse
        fimse
        


Fimalgoritmo


