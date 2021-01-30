cat $1 | awk '$3 == "NEG" {print}' > "$(dirname $(realpath $1))/neg.txt"
cat $1 | awk '$3 == "POZ" {print}' > "$(dirname $(realpath $1))/poz.txt"
