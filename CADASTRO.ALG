Algoritmo "Cadastro"

tipo

   pessoa=registro

      nome: caractere
      cpf: inteiro
      idade: inteiro
      telefone: caractere
      endereco: caractere
      salario: real
      pq: caractere

   fimregistro

Var

   cadastro: vetor [1..2,0..6] de pessoa
   i,j: inteiro


Inicio

   para i de 1 ate 2 faca

      escreval ("Informações da pessoa", i)
      escreval ("")

      escreval ("Digite seu nome: ")
      leia (cadastro[i,0].nome)
      escreval ("Digite seu cpf: ")
      leia (cadastro[i,1].cpf)
      escreval ("Digite sua idade: ")
      leia (cadastro[i,2].idade)
      escreval ("Digite seu telefone: ")
      leia (cadastro[i,3].telefone)
      escreval ("Digite seu endereço: ")
      leia (cadastro[i,4].endereco)
      escreval ("Qual sua pretensão salarial? Pouco por favor, estamos sempre em crise: ")
      leia (cadastro[i,5].salario)
      escreval ("Além da necessidade de trabalhar que todos tem, diga-me, por que quer trabalhar aqui?")
      leia (cadastro[i,6].pq)
      limpatela ()
   fimpara


   para i de 1 ate 2 faca
      escreval ("")
      escreval ("Dados da pessoa",i)
      escreval ("")
      escreval ("Nome: ",cadastro[i,0].nome)
      escreval ("CPF: ",cadastro[i,1].cpf)
      escreval ("Idade: ",cadastro[i,2].idade)
      escreval ("Telefone: ",cadastro[i,3].telefone)
      escreval ("Endereço: ", cadastro [i,4].endereco)
      escreval ("Pretensão: ",cadastro[i,5].salario)
      escreval ("Motivo: ",cadastro[i,6].pq)



   fimpara




Fimalgoritmo