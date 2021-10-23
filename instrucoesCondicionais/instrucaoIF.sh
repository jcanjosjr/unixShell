#!/bin/bash
#################################################################
# Script para treinar Condição IF.                              #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Script com intuíto de iniciar os estudos em Shell. #
#                                                               #
# Exemplo de uso: ./instrucaoIF.sh                              #
#################################################################

# Verificando se o parâmetro existe em /etc/passwd, 
# se não existir é jogado em /dev/null
if grep "$1" /etc/passwd > /dev/null
then
    echo "O usuário existe"
else
    echo "O usuário não existe"
fi

# Mesmo código com váriavel.
USUARIO=$(grep "$2" /etc/passwd)

# Se a variável usuário não for nula, existe, se não não existe.
if [ -n "$USUARIO" ]
# if test -n "$USUARIO"
# Colchetes substitui a palavra test, é a forma mais usada.
then
    echo "O usuário existe"
else
    echo "O usuário não existe"
fi
