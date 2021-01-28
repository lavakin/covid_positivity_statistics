mkdir -p by_age_groups/POZ
mkdir -p by_age_groups/NEG

for file in "$@"
do
	rfile=$(echo $file | cut -d'/' -f 2)
	cat $file| awk '$4 == "NEG" {print}' >> "by_age_groups/NEG/$rfile"
	cat $file| awk '$4 == "POZ" {print}' >> "by_age_groups/POZ/$rfile"
done
