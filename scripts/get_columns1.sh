for var in "$@"
do
	substri=$(echo $var| cut -d'/' -f 2)
	cat $var | cut --complement -f1 | sed '/^[[:space:]]*$/d' | cut -f3,9,11 |  awk '{print substr($0,0,2),$2,$3}' | awk '$3 != "" { print }' | awk '$2 ~ /2020/{print}' |  awk '($1<21)? $1=((100+$1)) : $1' | awk '$1=((int((130-$1)/10)*10))' |awk '/po/ { $3 = "POZ" } 1' | awk '/ne/ { $3 = "NEG" } 1'  | awk '($3 == "NEG" || $3 == "POZ") { print }' | sort -k2n -k1n -k3 | uniq -c > "./cutted/cutted_$substri"
done

