Algoritmo "Verifica_par"

Var

   numero : real
   valid, ciclo : inteiro

procedimento valida_par (n:real)
inicio
   se (n Mod 2) =0 entao
      valid := 1
   senao
      valid :=0
   fimse

fimprocedimento


Inicio

ciclo := 1

   enquanto ciclo = 1 fa�a

      escreval ("Digite o valor a ser testado: ")
      leia (numero)
      valida_par (numero)

      se valid = 1 entao
         escreval ("O n�mero digitado � par")
         escreval ("")
      fimse
      se valid =0 entao
         escreval ("O n�mero digitado � impar")
         escreval ("")
      fimse

      escreval ("Para verificar outro n�mero, digite 1")
      leia (ciclo)
      
      limpatela ()

   fimenquanto


Fimalgoritmo