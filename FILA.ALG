Algoritmo "fila"

Var
   fila: vetor[0..49]de inteiro
   _inicio, fim, i,r, valor: inteiro
   c: caractere

procedimento inserir()
inicio
   se fim < 49 entao
      escreval("Digite um valor para inserir na fila: ")
      leia(fila[fim])
      fim := fim +1
   senao
      escreval("N�o existe espa�o na fila")
   fimse
fimprocedimento

procedimento remover()
Inicio
   se _inicio <> fim entao
      valor := fila[_inicio]
      _inicio := _inicio+1
      escreval ("O n�mero ", valor, " foi removido da fila")
   senao
      escreval("N�o existe elemento para remover")
      valor := -1
   fimse
fimprocedimento

procedimento Topo()
inicio
   Escreval("MENU")
   Escreval("1 - Inserir")
   Escreval("2 - Remover")
   escreval("3 - Verifica vazio")
   escreval("4 - Listar dados")
   escreval("5 - Esvaziar fila")
   escreval("6 - Sair")
   Escreval("Escolha uma op��o no Menu")
   leia(r)

fimprocedimento

Inicio
   r:=0
   enquanto r <> 6 faca
   Topo()

      escolha r

      caso 1
         limpatela ()
         inserir ()

      caso 2
         limpatela ()
         remover()


      caso 3
         limpatela ()
         se fim = _inicio entao
            escreval("A fila est� vazia")
         senao
            escreval ("A fila n�o est� vazia")
         fimse

      caso 4
         limpatela ()
         para _inicio de _inicio ate fim faca
            escreval ("Posi��o ", _inicio, " - Valor ", fila[_inicio])
         fimpara

      caso 5
         limpatela ()
         _incio:=0
         fim:=0
         escreval ("Algu�m espirrou na fila, est� vazia")

      fimescolha

   fimenquanto





Fimalgoritmo