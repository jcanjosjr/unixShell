#!/bin/bash
#################################################################
# Script para treinar Condição FOR.                             #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Script com intuíto de iniciar os estudos em Shell. #
#                                                               #
# Exemplo de uso: ./instrucaoFOR.sh                             #
#################################################################

# Primeiro exemplo:

read -p "Informe o início da sequência: " INICIO
read -p "Informe o final da sequência: " FINAL
# Para cada i em sequencia inicio -> final: faça
for i in $(seq "$INICIO" "$FINAL")
do
    echo "Exibindo o valor de $i"
    sleep 1
done

for i in /home/jcanjos/shellscript/exercicios/*
do
    # Verificando apenas se é file
    if [ -f $i ]
    then
        echo "Verificando o arquivo $i"
        LINHAS=$(cat $i | wc -l)
        echo "O arquivo $i contém $LINHAS linhas."
        echo
    fi
done
