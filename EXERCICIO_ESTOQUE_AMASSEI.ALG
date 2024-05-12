Algoritmo "EXERCICIO_ESTOQUE_AMASSEI"

//ENUNCIADO DO EXERCÍCIO:
 //Exercício: Controle de Estoque

//Você foi contratado por uma empresa para desenvolver um programa de controle de estoque. O programa
//deve permitir ao usuário realizar as seguintes operações:
//1 - Adicionar um novo produto ao estoque.
//2 - Atualizar a quantidade em estoque de um produto existente.
//3 -Visualizar o estoque atual, mostrando o nome, a quantidade e o valor unitário de cada produto.
//O programa deve utilizar registros para representar cada produto,
//onde cada registro contém o nome do produto, a quantidade em estoque
//e o valor unitário do produto.

Tipo produto = registro
     nome: caracter
     quantidade: inteiro
     valorUnitario: real
fimregistro

Var
estoque: vetor [1..100] de produto
totalProdutos, i, add_mais, option: inteiro
produto_desejado: caracter
nova_quant: inteiro
encontrado: logico
Inicio
repita
      Escreval("OPÇÕES")
      Escreval("1 - Adicionar um novo produto ao estoque.")
      Escreval("2 - Atualizar a quantidade em estoque de um produto existente.")
      Escreval("3 - Visualizar o estoque atual.")
      Escreval("4 - Sair do programa.")
      Leia(option)

      escolha option
           Caso 1
                Limpatela()
                Escreval("Qual o nome do produto?")
                Leia(estoque[totalProdutos + 1].nome)
                Escreval("Qual a quantidade?")
                Leia(estoque[totalProdutos + 1].quantidade)
                Escreval("Qual o valor unitário?")
                Leia(estoque[totalProdutos + 1].valorUnitario)
                totalProdutos <- totalProdutos + 1
                Escreval("Produto adicionado com sucesso!")
           Caso 2
                encontrado <- falso
                Escreval("Qual item deseja alterar a quantidade? ")
                Leia(produto_desejado)
                Para i de 1 ate totalProdutos faca
                    Se(estoque[i].nome = produto_desejado)então
                        Escreval("Qual a nova quantidade de ", produto_desejado)
                        Leia(nova_quant)
                        estoque[i].quantidade <- nova_quant
                        encontrado <- verdadeiro
                        Escreval("Quantidade de ", produto_desejado, " atualizado com sucesso!")
                    Fimse
                fimpara
                Se(encontrado = falso)então
                    Escreval("Produto não encontrado")
                    Escreval("--Tente novamente--")
                fimse
           Caso 3
                Limpatela()
                Escreval("ESTOQUE ATUAL")
                Para i de 1 ate totalProdutos faca
                    Escreval("Nome: ", estoque[i].nome)
                    Escreval("Quantidade: ", estoque[i].quantidade)
                    Escreval("Preço unitário: ", estoque[i].valorUnitario)
                fimpara
      fimescolha
ate option = 4

Fimalgoritmo