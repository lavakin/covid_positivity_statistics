for var in "$@"
do
	substri=$(echo $var| cut -d'/' -f 2)
	cat $var | cut --complement -f1 | sed '/^[[:space:]]*$/d' | cut -f9,11 | awk '$2 != "" { print }' | awk '$1 ~ /2020/{print}' |  awk '/po/ { $2 = "POZ" } 1' | awk '/ne/ { $2 = "NEG" } 1'  | awk '($2 == "NEG" || $2 == "POZ") { print }' | sort -k1n -k2 | uniq -c | sed 's/^[ \t]*//' | sed -e "s+\([^0-9]\)\([0-9]\)/+\10\2/+g; s+/\([0-9]\)\([^0-9]\)+/0\1\2+g" | tr ' ' '\t' > "./by_date/by_date_$substri"
done
