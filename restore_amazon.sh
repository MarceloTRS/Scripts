#!/bin/bash

CAMINHO_RESTORE=/home/marcelo/restore_contatos_amazon
aws s3 sync s3://mtrs-curso-shell-script/2022-12-29 $CAMINHO_RESTORE

cd $CAMINHO_RESTORE
if [ -f $1.sql ]
then
	mysql -u root contatos < $1.sql
	if [ $? -eq 0 ]
	then
		echo "O restore foi realizado com sucesso"
	fi
else
	echo "O arquivo procurado nao existe no diretorio"	
fi
