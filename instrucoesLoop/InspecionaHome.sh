#!/bin/bash
#################################################################
# Script para monitorar um usuário.                             #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Inspeciona os diretórios home dos usuários em      #
#            busca de arquivos de determinadas extensões.       #
#                                                               #
# Exemplo de uso: ./InspecionaHome.sh                           #
#                                                               #
#################################################################

# Fazendo um loop dentro de todos os diretórios do /home 
for user in /home/*
do
    MP4COUNT=0
    MP3COUNT=0
    JPGCOUNT=0
    OLDIFS=$IFS
    IFS=$'\n'
    # Loop para pegar os arquivos dentro dos diretórios.
    for files in $(find $user -name '*.jpg*' -o -name '*.mp4' -o -name '*.mp3')
    do
        case $files in
            *.mp4)
                MP4COUNT=$(expr $MP4COUNT +1)
                ;;
            *.mp4)
                MP4COUNT=$(expr $MP3COUNT + 1)
                ;;
            *.jpg)
                JPGCOUNT=$(expr  $JPGCOUNT +1)
                ;;
        esac
    done # Fim do for do find files.

# basename /home/josec = josec
echo "Usuário: $(basename $user)"
echo "Arquivos JPG: $JPGCOUNT"
echo "Arquivos MP3: $MP3COUNT"
echo "Arquivos MP4: $MP4COUNT"
echo

IFS=$OLDIFS
