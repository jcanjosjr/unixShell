#!/bin/bash
#################################################################
# Script para monitorar um processo.                            #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Processo deve rodar como Daemon, monitorando a     #
#            execução de um processo passado por parâmetro.     #
#            Exibe constantes mensagens na tela quando o        #
#            processo não está em execução.                     #
#                                                               #
# Exemplo de uso: ./MonitoraProcesso.sh                         #
#                                                               #
#################################################################

TIME=5

if [ $# -eq 0 ]
then
    echo "Favor informar um processo como argumento."
    echo "./MonitoraProcesso.sh <processo>"
    exit 1
fi

while true
do
    if ps axu |grep $1 |grep -v grep |grep -v $0 > /dev/null
    then
        sleep $TIME
    else
        echo "Atenção! O proceso $1 Não está em execução."
        sleep $TIME
    fi
done

