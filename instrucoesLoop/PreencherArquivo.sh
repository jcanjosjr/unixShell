#!/bin/bash
#################################################################
# Script para preencher um arquivo.                             #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Baseado em informações do usuário, o script cria   #
#            um arquivo texto de determinado tamanho.           #
#                                                               #
# Exemplo de uso: ./MonitoraProcesso.sh                         #
#                                                               #
#################################################################

read -p "Informe o nome do arquivo a ser criado: " FILE
read -p "Informe um conjunto de caracteres: " WORD
read -p "Informe o tamanho final do arquivo(em bytes): " SIZE

cat /dev/null > $FILE

PORC_EXIBIDA=0

# Até que o tamanho final do arquivo, seja maior ou igual o tamanho do arquivo, faça:
until [ $SIZE -le $(stat --printf=%s "$FILE") ]
do
    echo -n $WORD >> $FILE
    SIZEATUAL=$(stat --printf=%s "$FILE")

    PORC_ATUAL=$(expr $SIZEATUAL \* 100 / $SIZE)

    if [ $(expr $PORC_ATUAL % 10) -eq 0 -a $PORC_EXIBIDA -ne $PORC_ATUAL ]
    then
        echo "Concluído: $PORC_ATUAL% - Tamanho do Arquivo: $SIZEATUAL"
        PORC_EXIBIDA=$PORC_ATUAL
    fi
done