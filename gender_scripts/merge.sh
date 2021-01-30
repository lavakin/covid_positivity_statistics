> "$(dirname $(realpath $1))/merged.txt"
for file in "$@"
do
	cat $file >> "$(dirname $(realpath $file))/merged.txt"
done
cat "$(dirname $(realpath $file))/merged.txt" | cut --complement -f1  | sort -n -k 2.9 -k 2.5 -k 2 | uniq -c | sed 's/^[ \t]*//'\ | sed 's/ /\t/g' | sort -n -k 2.9 -k 2.5 -k 2 > "$(dirname $(realpath $file))/merged2.txt"
