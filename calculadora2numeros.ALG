Algoritmo "semnome"

Var
 opcao: inteiro
 n1, n2, solution: real
Inicio
    repita
        Escreval("Selecione a opera��o desejada:")
        Escreval("1 - Adi��o")
        Escreval("2 - Subtra��o")
        Escreval("3 - Divis�o")
        Escreval("4 - Multiplica��o")
        Escreval("5 - Sair do programa")
        Leia(opcao)
        
        Se(opcao = 1)Ent�o
            Escreval("O primeiro n�mero: ")
            Leia(n1)
            Escreval("O segundo n�mero: ")
            Leia(n2)
            solution <- n1 + n2
            Escreval("A resposta da adi��o �: ", solution)
        fimse
        Se(opcao = 2)Ent�o
            Escreval("O primeiro n�mero: ")
            Leia(n1)
            Escreval("O segundo n�mero: ")
            Leia(n2)
            solution <- n1 - n2
            Escreval("A resposta da subtra��o �: ", solution)
        fimse
        Se(opcao = 3)ent�o
            Escreval("O primeiro n�mero: ")
            Leia(n1)
            Escreval("O segundo n�mero: ")
            Leia(n2)
            solution <- n1/n2
            Escreval("O resuldado da divis�o foi de: ", solution)
        fimse
        Se(opcao = 4)entao
            Escreval("O primeiro n�mero: ")
            Leia(n1)
            Escreval("O segundo n�mero: ")
            Leia(n2)
            solution <- n1*n2
            Escreval("O resultado da multiplica��o foi de: ",solution)
        fimse
        Se(opcao>6)entao
            Escreval("Op��o inv�lida! Tente novamente.")
        fimse
    ate(opcao = 5)
        Escreval("Voc� saiu do programa")

Fimalgoritmo