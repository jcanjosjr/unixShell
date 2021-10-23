#!/bin/bash
#################################################################
# Script para treinar Parâmetros.                               #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Script com intuíto de iniciar os estudos em Shell. #
#                                                               #
# Exemplo de uso: ./exemploParametros.sh                        #
#################################################################

# $0 - Nome do Programa.
# $# - Quantidade de Parâmetros.
# $* - Todos os parâmetros inseridos.
# $1-9 - Cada um dos parâemtros.

echo "O script $0 recebeu $# parâmetros."

echo "Os parâmetros recebidos foram: $*"

echo ""
echo "O parâmetros \$1 = $1"
echo "O parâmetros \$2 = $2"
echo "O parâmetros \$3 = $3"
echo "O parâmetros \$4 = $4"