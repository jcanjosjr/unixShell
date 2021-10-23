#!/bin/bash
#################################################################
# Script para treinar Soma.                                     #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Script com intuíto de iniciar os estudos em Shell. #
#                                                               #
# Exemplo de uso: ./exercicio01.sh                              #
#################################################################

# Utilizando o read para receber input.
clear
echo "=== Script para somar dois valores! ==="
echo ""
echo -n "Informe o valor de N1: "
read N1
echo -n "Informe o valor de N2: "
read N2

echo -n "A soma do valor $N1 + $N2 é: $(expr $N1 + $N2)"
echo ""
