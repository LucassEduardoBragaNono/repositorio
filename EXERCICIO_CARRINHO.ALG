Algoritmo "ex"
Tipo produto = registro
     nome: caracter
     quantidade: inteiro
     valorUnitario: real
     valorTotal: real
fimregistro

Var
itens: vetor [1..100] de produto
totalProdutos, i, add_mais, option: inteiro
produto_desejado: caracter
nova_quant: inteiro
encontrado: logico
novo_nome: caracter
posicao: inteiro
Inicio
repita
      Escreval("OPÇÕES")
      Escreval("1 - Adicionar um novo produto ao carrinho.")
      Escreval("2 - Atualizar um produto existente.")
      Escreval("3 - Visualizar o carrinho atual.")
      Escreval("4 - Remover item do carrinho")
      Escreval("0 - Sair do programa.")
      Leia(option)

      escolha option
           Caso 1
                Limpatela()
                Escreval("Qual o nome do produto?")
                Leia(itens[totalProdutos + 1].nome)
                Escreval("Qual a quantidade?")
                Leia(itens[totalProdutos + 1].quantidade)
                Escreval("Qual o valor unitário?")
                Leia(itens[totalProdutos + 1].valorUnitario)
                totalProdutos <- totalProdutos + 1
                Escreval("Produto adicionado com sucesso!")
           Caso 2
                encontrado <- falso
                Escreval("Qual item deseja alterar a quantidade? ")
                Leia(produto_desejado)
                Para i de 1 ate totalProdutos faca
                    Se(itens[i].nome = produto_desejado)então
                        Escreval("Qual a nova quantidade de ", produto_desejado)
                        Leia(nova_quant)
                        Escreval("Qual o novo nome?")
                        Leia(novo_nome)
                        itens[i].quantidade <- nova_quant
                        itens[i].nome <- novo_nome
                        encontrado <- verdadeiro
                        Escreval("Item ", produto_desejado, " atualizado com sucesso!")
                    Fimse
                fimpara
                Se(encontrado = falso)então
                    Escreval("Produto não encontrado")
                    Escreval("--Tente novamente--")
                fimse
           Caso 3
                Limpatela()
                Escreval("CARRINHO ATUAL")
                Para i de 1 ate totalProdutos faca
                    Escreval("Nome: ", itens[i].nome)
                    Escreval("Quantidade: ", itens[i].quantidade)
                    Escreval("Valor unitário: ", itens[i].valorUnitario)
                    Escreval("Valor total", itens[i].valorTotal)
                fimpara
           Caso 4
                Limpatela()
                Escreval("Qual a posição do item deseja remover do carrinho?")
                Leia(posicao)
                itens[posicao+1].nome <- ""
                itens[posicao] <- itens[posicao+1]
      fimescolha
ate option = 0

Fimalgoritmo