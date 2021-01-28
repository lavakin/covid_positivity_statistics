mkdir -p by_age_groups/POZ
mkdir -p by_age_groups/NEG

cat $1| awk '$3 == "NEG" {print}' >> "neg.txt"
cat $1| awk '$3 == "POZ" {print}' >> "poz.txt"

