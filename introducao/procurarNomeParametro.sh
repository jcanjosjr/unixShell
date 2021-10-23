#!/bin/bash
##################################################################
# Script para treinar Input.                                     #
#                                                                #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)         #
# Data Criação: 22/10/2021                                       #
#                                                                #
# Descrição: Script com intuíto de iniciar os estudos em Shell.  #
#                                                                #
# Exemplo de uso: ./procurarNomeParametro.sh                     #
##################################################################

ARQALUNOS="/home/jcanjos/shellscript/arquivos/sobrenome.txt"
# Utilizando o read para receber input.
clear
echo "=== Script para buscar um sobrenome ==="

NOMECOMPLETO=$(grep "$1" $ARQALUNOS)

echo ""
#echo "O nome completo é: $(grep "$ALUNO" $ARQALUNOS)"
echo "O nome completo é: $NOMECOMPLETO"
echo ""
echo "Fim do Script."
