#!/bin/bash

# Configurações
CPATH=/root/bkdb/db
TODAY=`date +%d-%m-%Y_-_%H-%M-%S`
FNAME=$CPATH/backup_$TODAY.sql
DBNAME=SEU_BANCO_DE_DADOS
DAYS=+2

# Exportar
mysqldump -u root $DBNAME --triggers --routines > $FNAME

# Compactar
bzip2 $FNAME

# Apagar antigos (a partir de 2 dias passados se escrever +2)
find $CPATH -type f -mtime $DAYS -exec sh -c 'rm -rf "{}"' \;
