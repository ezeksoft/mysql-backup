### Configuração
As configurações se encontram no começo do arquivo run.sh.

Escolha o caminho da pasta onde serão salvos os backups nessa variável:
	CPATH=/root/bkdb/db

Escolha até quantos dias para trás será feito o backup:
	DAYS=2

### Cronjob
Abra o arquivo cronjob com o comando:
```
crontab -e
```
Insira uma nova linha com este código que executa script a cada 2 horas.
```
0 */2 * * * bash /root/bkdb/run.sh
```

