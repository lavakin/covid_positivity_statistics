cat $1 | awk '$3 == "NEG" {print}' > "by_date/merged/neg.txt"
cat $1 | awk '$3 == "POZ" {print}' > "by_date/merged/poz.txt"
