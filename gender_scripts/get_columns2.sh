
for var in "$@"
do
	substri=$(echo $var| cut -d'/' -f 2)
	cat $var | cut --complement -f1 | sed '/^[[:space:]]*$/d' | cut -f3,7,9 |  awk '{print substr($0,3,1),$2,$3}' | awk '$3 != "" { print }' | awk '$2 ~ /2020/{print}' |awk '/po/ { $3 = "POZ" } 1' | awk '/ne/ { $3 = "NEG" } 1'  | awk '($3 == "NEG" || $3 == "POZ") { print }' | sort -k2n -k1n -k3 | sed 's/^[ \t]*//' |  tr ' ' '\t' > "./test/cutted_$substri"
done

