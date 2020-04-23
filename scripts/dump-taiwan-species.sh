SQL1='scripts/dump-taiwan-species-csv.sql'
SQL2='scripts/dump-taiwan-species-txt.sql'

rm /taicol-code/output/*.txt
rm /taicol-code/output/*.csv

mysql -u root -p taicol < $SQL1
mysql -u root -p taicol < $SQL2
