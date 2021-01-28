mkdir -p by_date/merged
> by_date/merged/merged.txt
for file in "$@"
do
	cat $file >> by_date/merged/merged.txt
done
#sed -e "s+\([^0-9]\)\([0-9]\)/+\10\2/+g; s+/\([0-9]\)\([^0-9]\)+/0\1\2+g" by_date/merged/merged.txt > by_date/merged/merged3.txt
cat by_date/merged/merged.txt | sort -n -k 2.9 -k 2.5 -k 2  > by_date/merged/merged2.txt
