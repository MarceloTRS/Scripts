#!/bin/bash

#####################################################################
#
# Lista_comandos.sh - Script para abrir as listas de comandos
#
# Autor: Marcelo Teixeira (marceloinfo2005@gmail.com)
# Data Criação: 07/01/2021
#
# Exemplo de uso: ./lista_comandos.sh
#
# Alteracoes:
#      
# 08/01/2021 - inclusão de variavéis
###########################################################

DIRETORIO=/home/marcelo/Dropbox/COMANDOS_BP

clear
echo "=== Lista de comandos==="
cd $DIRETORIO
pluma ATENDIMENTO.txt COMANDOS.txt ACESSOS.txt COMANDOS_LINUX AWS_COMANDOS COMANDOS_BAAS COMANDOS_DATACLICK COMANDOS_DEV COMANDOS_MYSQL COMANDOS_WINDOWS.txt SEMANAL.txt
pwd

