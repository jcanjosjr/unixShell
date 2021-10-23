#!/bin/bash
#################################################################
# Script para gerar relatório de usuário.                       #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Script com intuíto de iniciar os estudos em Shell. #
#                                                               #
# Exemplo de uso: ./exercicio03.sh                              #
#################################################################

# Verificando se usuário existe:
ls /home/$1 > /dev/null 2>&1 || { echo "Usuário inexistente." ; exit 1; }

USERID=$(grep $1 /etc/passwd|cut -d":" -f3)
DESC=$(grep $1 /etc/passwd|cut -d":" -f5 | tr -d ,)
USOHOME=$(du -sh /home/$1|cut -f1)

echo "--------------------------------------------"
echo "Relatório do Usuário: $1"
echo
echo "UID: $USERID"
echo "Nome ou Descrição: $DESC"
echo
echo "Espaço utilizado em /home/$1: $USOHOME"
echo
echo "Ultimo Login: "
lastlog -u $1
echo "--------------------------------------------"
exit 0