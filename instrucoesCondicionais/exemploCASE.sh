#!/bin/bash
#################################################################
# Script para treinar Condição CASE.                            #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Script com intuíto de iniciar os estudos em Shell. #
#                                                               #
# Exemplo de uso: ./exemploCASE.sh                              #
#################################################################

# Validando o parâmetro passado:
case "$1" in 
    [0-9])
        echo "O parâmetro é um número"
        ;;
    [A-Z])
        echo "O parâmetro é uma letra maiúscula"
        ;;
    [a-z])
        echo "O parâmetro é uma letra minúscula"
        ;;
    *)
        echo "O parâmetro é um cáracter especial."
esac
