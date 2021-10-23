#!/bin/bash
#################################################################
# Script para gerar backup de usuário /home.                    #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Script fará um backup compactado do diretório home #
#            do usuário que estiver executando o script.        #
#                                                               #
# Exemplo de uso: ./gerarBackupHome.sh                          #
#################################################################

# Definindo o diretório destino do backup.
DIRDEST=$HOME/backup

# Criando diretório, caso não exista.
if [ ! -d $DIRDEST ]
then
    echo "Criando diretório $DIRDEST..."
    mkdir -p $DIRDEST
fi

# Verifica se possui arquivos criados a menos de 7 dias em $DIRDEST
DAYS7=$(find $DIRDEST -ctime -7 -name backup_home\*tgz)  # Atenção na proteção do *

# A syntax das aspas duplas valida se a variável é nula.
if [ "$DAYS7" ]
then
    echo "Já foi gerado um backup no diretório #HOME nos últimos 7 dias."
    echo -n "Deseja continuar? (N/s): "
    # Este read com -n1 captura apenas uma tecla.
    read -n1 CONT
    echo
    # -o indica ou
    if [ "$CONT" = N -o "$CONT" = n -o "$CONT" = ""]
    then
        echo "Backup abortado!"
        exit 1
    elif [ $CONT = S -o $CONT = s ]
    then
        echo "Será criado mais um backup para a mesma semana."
    else
        echo "Opção inválida."
        exit 2
    fi
fi

echo "Criando backup..."
# Variável contendo nome do arquivo gerado:
ARQ="backup_home_$(date +%Y%m%d%H%M).tgz"

tar zcvpf $DIRDEST/$ARQ --absolute-names --exclude="$HOME/Google Drive" --exclude="$HOME/Videos" --exclude="DIRDEST" "$HOME"/* > /dev/null
#tar zcvpf $DIRDEST/$ARQ --exclude="$DIRDEST" "$HOME"/* > /dev/null

echo
echo "O backup de nome \""$ARQ"\" foi criado em $DIRDEST"
echo
echo "Backup Concluído!"