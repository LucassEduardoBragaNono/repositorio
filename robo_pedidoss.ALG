Algoritmo "semnome"

Var
valorprodu: real
valorprodu2: real
 valorprodu3: real
 option: inteiro
 optionpag: inteiro
 optionped: inteiro
 optionfim: inteiro
Inicio
Repita
     Escreval("Faça seu pedido")
     Escreval("1 - Novo pedido")
     Escreval("2 - Cancelar pedido")
     Leia(option)
     Se(option = 2)entao
         escreval("Você cancelou o pedido.")
     fimse
     Se(option = 1)entao
     Escreval("Forma de pagamento")
     Escreval("1 - PIX")
     Escreval("2 - CRÉDITO")
     Escreval("3 - DINHEIRO")
     Leia(optionpag)

     Escreval("Cardápio")
     Escreval("1 - HAMBURGUER DUPLO - R$: 25")
     Escreval("2 - X-BACON - R$: 24")
     Escreval("3 - X-SALADA - R$: 20")
     Leia(optionped)
     Se(optionped = 1)entao
        valorprodu <- 25*1.10
        Escreval("O valor da compra com a taxa de entrega será: R$ ", valorprodu)
     Fimse
     Se(optionped = 2)entao
        valorprodu2 <- 24*1.10
        Escreval("O valor da compra com a taxa de entrega será: R$ ", valorprodu2)
     Fimse
     Se(optionped = 3)entao
        valorprodu3 <- 20*1.10
        Escreval("O valor da compra com a taxa de entrega será: R$ ", valorprodu3)
     Fimse
     Escreval("5 - Acompanhar pedido")
     Escreval("6 - Sair do aplicativo")
     Leia(optionfim)
     Se(optionfim = 5)entao
        Escreval("Seu pedido será entregue daqui 40 anos")
     fimse
     Se(optionfim = 6)entao
        Escreval("- Aguarde a entrega - ")
     fimse
     fimse
fimrepita(option = 2) ou (optionfim = 6)
Fimalgoritmo