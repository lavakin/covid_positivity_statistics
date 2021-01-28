echo "date  positive negative" > joined.txt
join -e"0" -o "0 1.1 2.1" -a1 -a2 -1 2 -2 2 -t $'\t' by_date/merged/poz.txt by_date/merged/neg.txt >>  by_date/merged/joined.txt
