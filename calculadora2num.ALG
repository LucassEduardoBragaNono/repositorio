Algoritmo "semnome"

Var
 opcao: inteiro
 n1, n2, solution: real
Inicio
    repita
        Escreval("Selecione a operação desejada:")
        Escreval("1 - Adição")
        Escreval("2 - Subtração")
        Escreval("3 - Divisão")
        Escreval("4 - Multiplicação")
        Escreval("5 - Sair do programa")
        Leia(opcao)
        
        Se(opcao = 1)Então
            Escreval("O primeiro número: ")
            Leia(n1)
            Escreval("O segundo número: ")
            Leia(n2)
            solution <- n1 + n2
            Escreval("A resposta da adição é: ", solution)
        fimse
        Se(opcao = 2)Então
            Escreval("O primeiro número: ")
            Leia(n1)
            Escreval("O segundo número: ")
            Leia(n2)
            solution <- n1 - n2
            Escreval("A resposta da subtração é: ", solution)
        fimse
        Se(opcao = 3)então
            Escreval("O primeiro número: ")
            Leia(n1)
            Escreval("O segundo número: ")
            Leia(n2)
            solution <- n1/n2
            Escreval("O resuldado da divisão foi de: ", solution)
        fimse
        Se(opcao = 4)entao
            Escreval("O primeiro número: ")
            Leia(n1)
            Escreval("O segundo número: ")
            Leia(n2)
            solution <- n1*n2
            Escreval("O resultado da multiplicação foi de: ",solution)
        fimse
        Se(opcao>6)entao
            Escreval("Opção inválida! Tente novamente.")
        fimse
    ate(opcao = 5)
        Escreval("Você saiu do programa")

Fimalgoritmo