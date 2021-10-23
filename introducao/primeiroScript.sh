#!/bin/bash
#################################################################
# Script para treinar Input.                                    #
#                                                               #
# Autor: José Carlos dos Anjos (josec.doanjos@gmail.com)        #
# Data Criação: 22/10/2021                                      #
#                                                               #
# Descrição: Script com intuíto de iniciar os estudos em Shell. #
#                                                               #
# Exemplo de uso: ./primeirScript.sh                            #
#################################################################

# Declarando varíaveis.
DATAHORA=$(date +%H:%M)
ARQALUNOS="/home/jcanjos/arquivos/arquivos.txt"

# Função de leitura de data e hora.
echo "--- Primeiro Script ---"
echo ""
echo "Exibir data e hora atual: $DATAHORA" 
echo "--- Listar? ---"
# Realizando a leitura de uma lista de nomes.
echo "Listagem de Pessoas: "
sort $ARQALUNOS

DATAHORA=$(date +%H)
echo "--- Mudando a varíavel ---"
echo "Nova hora (sem minutos): $DATAHORA"
