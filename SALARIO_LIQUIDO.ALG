Algoritmo "SALARIO_LIQUIDO"

Var
salario, desconto_salarial: real
saldo_final: real
desconto_inss: real
total_imposto: real
Inicio
    Escreval("Digite o seu s�lario: ")
    Leia(salario)
    
    //Imposto de Renda
    Se (salario <= 2258)Ent�o
        desconto_salarial <- 0
    Fimse
        
    Se (salario >= 2259) E (salario <= 2826)Ent�o
            desconto_salarial <- salario * 0.075
    Fimse
            
    Se (salario >= 2827) E (salario <= 3551 )Ent�o
            desconto_salarial <- salario * 0.15
    Fimse
            
    Se (salario >= 3552) E (salario <= 4664)Ent�o
            desconto_salarial <- salario * 0.225
    Fimse
            
    Se (salario >= 4665) entao
            desconto_salarial <- salario * 0.275
    Fimse
            
    //Imposto do INSS
    Se (salario <= 1412) Ent�o
        desconto_inss <- salario * 0.075
    Fimse
    
    Se(salario >= 1412) E (salario <= 2666)Ent�o
            desconto_inss <- salario * 0.09
    Fimse
    
    Se(salario >= 2667) E (salario <= 4000)Ent�o
            desconto_inss <- salario * 0.12
    Fimse
    
    Se(salario >= 4001) E (salario <= 7786) Ent�o
            desconto_inss <- salario * 0.14
    Fimse
    
    Se(salario >= 7787) Ent�o
            desconto_inss <- 7787 * 0.14
    Fimse
    total_imposto <- desconto_salarial + desconto_inss
    saldo_final <- salario - total_imposto

    Escreval("Imposto de Renda R$: ", desconto_salarial)
    Escreval("Imposto do INSS R$: ", desconto_inss)
    Escreval("O Total a ser descontado de imposto ser� de R$: ", total_imposto)
    Escreval("O seu s�lario l�quido ser� de R$: ", saldo_final)
Fimalgoritmo