#!/bin/bash

CAMINHO_HOME=/home/marcelo

cd $CAMINHO_HOME
if [ ! -d backup_db ]
then
	mkdir backup_db
fi

mysqldump -u root $1 > $CAMINHO_HOME/backup_db/$1.sql

if [ $? -eq 0 ]
then
	echo "Backup foi realizado com sucesso"
else
	echo "Houve um problema no backup"
fi
