#!/bin/bash
#################################################################
# Script para gerar uma Lista de Usuários                       #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Script com intuíto de listar todos os usuários     #
#            humanos do sistema.                                #
#                                                               #
# Exemplo de uso: ./ListaUsuarios.sh                            #
#################################################################

#UID's utilizados para usuários comuns       -s "\t" transforma em apenas 1 tab
MIN_UID=$(grep "^UID_MIN" /etc/login.defs|tr -s "\t"|cut -f2)
MAX_UID=$(grep "^UID_MAX" /etc/login.defs|tr -s "\t"|cut -f2)

# Alterando o separador padrão.
OLDIFS=$IFS
IFS=$'\n'

#Criando o cabeçalho da saída
echo -e "USUARIO\t\tUID\t\tDIR HOME\t\tNOME OU DESCRIÇÃO"

for i in $(cat /etc/passwd)
do
    USERID=$(echo $i | cut -d":" -f3)
    if [ $USERID -ge $MIN_UID -a $USERID -le $MAX_UID ]
    then
        USER=$(echo $i | cut -d":" -f1)
        USERDESC=$(echo $i | cut -d":" -f5 | tr -d ',')
        USERHOME=$(echo $i | cut -d":" -f6)
        echo -e "$USER\t\t$USERID\t\t$USERHOME\t\t$USERDESC"
    fi
done
IFS=$OLDIFS
