for var in "$@"
do
	substri=$(echo $var| cut -d'/' -f 2)
	cat $var | cut --complement -f1 | sed '/^[[:space:]]*$/d' | cut -f7,9 | awk '$2 != "" { print }' | awk '$1 ~ /2020/{print}' | cut -f1 >> by_visits/merged.txt
done
