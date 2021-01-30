cat $1 | uniq -c | sed 's/^[ \t]*//' | cut -d' ' -f1 |  awk '$1 > 20 { print }' |  awk '{print int(($1*5)/100)}' | sort -n | uniq -c | sed 's/^[ \t]*//' > results/by_visits.txt
cat $1 | uniq -c | sed 's/^[ \t]*//' | cut -d' ' -f1 |  awk '$1 > 20 { print }' |  awk '{print int(($1*5)/100)}' > results/by_visits2.txt
