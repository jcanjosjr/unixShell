#!/bin/bash
#################################################################
# Script para gerar relatório de hora.                       #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Script com intuíto de iniciar os estudos em Shell. #
#                                                               #
# Exemplo de uso: ./exercicio04.sh                              #
#################################################################

HORA=$(date +%H)
#HORA=$1
MIN=$(date +%M)

# if Para definir período:
# Estou considerando que das 00:00 às 06:00 é noite.

# Se a hora for >= 6 e <= 12
if [ $HORA -ge 06 -a $HORA -lt 12 ]
then
    echo "Bom dia!"
# Senão se a hora >= 12 e <= 18
elif [ $HORA -ge 12 -a $HORA -lt 18 ]
then
    echo "Boa tarde!"
else
    echo "Boa noite."
fi

# if Para definir AM/PM:
# Se a hora for >= 12
if [ $HORA -ge 12 ]
then
    AMPM=PM
else
    AMPM=AM
fi

# if Para reduzir a hora:
# Se a hora for >= 12
if [ $HORA -gt 12 ]
then 
    HORA=$(expr $HORA - 12)
fi

echo
echo "A hora atual é: $HORA:$MIN $AMPM"
