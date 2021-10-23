#!/bin/bash
#################################################################
# Script para tirar relatório da máquina.                       #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Script com intuíto de iniciar os estudos em Shell. #
#                                                               #
# Exemplo de uso: ./exercicio02.sh                              #
#################################################################

# Pegando os dados da máquina e atribuindo em varíaveis:
KERNEL=$(uname -r)
HOSTNAME=$(hostname)
CPUNO=$(cat /proc/cpuinfo |grep "model name"|wc -l)
CPUMODEL=$(cat /proc/cpuinfo |grep "model name"|head -n1|cut -c14-)
MEMTOTAL=$(expr $(cat /proc/meminfo |grep MemTotal|tr -d ' '|cut -d: -f2|tr -d kB) / 1024) # Trazendo memória em MB
FILESYS=$(df -h|egrep -v '(tmpfs/undev)')
UPTIME=$(uptime -s)

# Output de dados:
echo "----------------------------------------------------"
echo " Relatório da máquina: $HOSTNAME"
echo " Data/Hora: $(date)"
echo "----------------------------------------------------"
echo ""
echo " Máquina ativa desde: $UPTIME"
echo " Versão do Kenel: $KERNEL"
echo "----------------------------------------------------"
echo ""
echo " CPU's:"
echo " Quantidade de CPU's/Core: $CPUNO"
echo " Modelo da CPU: $CPUMODEL"
echo " Memória Total: $MEMTOTAL MB"
echo ""
echo "Partições:"
echo "$FILESYS"
echo "----------------------------------------------------"
