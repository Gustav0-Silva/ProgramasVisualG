Algoritmo "calculo_juros"
// Descri��o   : Programa para calculo de juros usando "para"
// Autor(a)    : Gustavo Silva Santos
// Data atual  : 15/02/2021
Var

taxa, valor, vfinal : real
i, per, g : inteiro


Inicio

      escreva ("Digite o valor  principal inicial: R$ ")
      leia (valor)
      escreva ("Digite a taxa de juros: ")
      leia (taxa)
      escreva ("Digite o per�odo em meses: ")
      leia (per)
      
      limpatela ()
      
      escreval ("Valor principal: R$ ", valor)
      escreval ("Taxa de juros: ", taxa)
      escreval ("Per�odo: ", per, " meses")

      escreval ("")
      g := 0
      taxa := (taxa +1)
      
      para i de 1 ate per faca
           valor := (valor * taxa)
           g := g+1
           escreval ("    M�s ", g,  " ----- valor: R$ ", valor)
           fimpara


Fimalgoritmo