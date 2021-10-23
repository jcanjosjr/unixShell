#!/bin/bash
#################################################################
# Script para treinar Input.                                    #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Script com intuíto de iniciar os estudos em Shell. #
#                                                               #
# Exemplo de uso: ./exemploExit.sh                              #
#################################################################

ls /tmp/

ls /tmp/outroarquivo

# Saindo do script, e definindo código de erro para 10.
#exit 10 

echo "Script executado"

# Definindo uma varíavel para receber o Exit Code
RETURN_CODE=$?

# Usando a varíavel para dat output no erro.
echo "O código de retorno do ls foi: $RETURN_CODE"