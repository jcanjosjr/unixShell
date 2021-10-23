#!/bin/bash
#################################################################
# Script para imitar uma Calculadora.                           #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Script com intuíto de iniciar os estudos em Shell. #
#                                                               #
# Exemplo de uso: ./exercicio06.sh                              #
#################################################################

# Recebendo os valores:
read -p "Informe o primeiro valor: " VALOR1
read -p "Informe o segundo valor: " VALOR2

# Validando os parâmetros.
if [ ! $VALOR ] || [ ! $VALOR2 ] # Poderia ser utilizado também o -z
then
    echo "Nenhum dos valores pode ser nulo."
    exit 1
fi

echo
echo "Escolha uma operação:"
echo "1 = Soma"
echo "2 = Subtração"
echo "3 = Multiplicação"
echo "4 = Divisão"
echo "Q = Sair"
echo
read -p "Opção: " OPCAO
echo

case $OPCAO in
    1)
        OPER="+"
        ;;
    2)
        OPER="-"
        ;;
    3)
        # se o valor1 ou valor2 for igual a 0.
        if [ $VALOR1 -eq 0 -o $VALOR2 -eq 0 ]
        then
            echo "Um valor 0 não pode ser utilizado em uma multiplicação."
            exit 1
        fi
        OPER="*"
        ;;
    4)
        # se o valor1 ou valor2 for igual a 0
        if [ $VALOR1 -eq 0 -o $VALOR2 -eq 0 ]
        then
            echo "Um valor 0 não pode ser utilizado em uma divisão."
            exit 1
        fi

        # se o resto da divisão for diferente de 0
        if [ $(expr $VALOR1 % $VALOR2) -ne 0 ]
        then
            echo "Divisão com Resto = $(expr $VALOR1 % $VALOR2)"
        else
            echo "Divisão exata."
        fi
        echo
        OPER="/"
        ;;
    [Qq])
        echo "Saindo..."
        exit
        ;;
    *)
        echo "Opção inválida!"
        exit 1
        ;;
esac
echo "$VALOR1 $OPER $VALOR2 = $(expr $VALOR1 "$OPER" $VALOR2)"
