#!/bin/bash

CAMINHO_BACKUP=/home/marcelo/backup_contatos_amazon
cd $CAMINHO_BACKUP
data=$(date +%F)
if [ ! -d $data ]
then
	mkdir $data
fi
tables=$(mysql -u root contatos -e "show tables;" | grep -v Tables)
for tabelas in $tables 
do
	mysqldump -u root contatos $tables > $CAMINHO_BACKUP/$data/$tables.sql
done

aws s3 sync $CAMINHO_BACKUP s3://mtrs-curso-shell-script
