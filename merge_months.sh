age_groups=(10 20 30 40 50 60 70 80 90 100)
files=(cutted/cutted_duben.txt cutted/cutted_kveten.txt cutted/cutted_kveten.txt cutted/cutted_cerven.txt cutted/cutted_cervenec.txt cutted/cutted_srpen.txt cutted/cutted_zari.txt cutted/cutted_rijen.txt cutted/cutted_listopad.txt cutted/cutted_prosinec.txt)



for file in "${files[@]}"
do
	for i in "${age_groups[@]}"
	do
		cat $file | awk -v var="$i" '$2==var { print }' >> "by_age_groups/$i.txt"
	done
done
