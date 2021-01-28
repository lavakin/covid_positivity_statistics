while read  line
do
	set -- $line
	echo -e "$3"
	cat by_age_groups/10.txt | awk -v var=$(echo -e "$3"), '$3==var' | cut -f1 >> by_age_groups/summary

done < by_age_groups/10.txt 
