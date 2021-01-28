age_groups=(10 20 30 40 50 60 70 80 90 100)
files1=(by_date/by_date_duben.txt by_date/by_date_kveten.txt by_date/by_date_kveten.txt by_date/by_date_cerven.txt by_date/by_date_cervenec.txt by_date/by_date_srpen.txt by_date/by_date_zari.txt by_date/by_date_rijen.txt by_date/by_date_listopad.txt by_date/by_date_prosinec.txt)
files=(cutted/cutted_duben.txt cutted/cutted_kveten.txt cutted/cutted_kveten.txt cutted/cutted_cerven.txt cutted/cutted_cervenec.txt cutted/cutted_srpen.txt cutted/cutted_zari.txt cutted/cutted_rijen.txt cutted/cutted_listopad.txt cutted/cutted_prosinec.txt)

function merge {
local directory="$1"   # Save first argument in a variable
shift            # Shift all arguments to the left (original $1 gets lost)
local files=("$@")
for file in "${files[@]}"
do
	for i in "${age_groups[@]}"
	do
		cat $file | awk -v var="$i" '$2==var { print }' >> "$directory/$i.txt"
	done
done
}
function merge2 {
local directory="$1"   # Save first argument in a variable
shift            # Shift all arguments to the left (original $1 gets lost)
local files=("$@")
for file in "${files[@]}"
do
	cat $file >> "$directory/merged.txt"
done
}
merge "by_age_groups" "${files[@]}"
merge2 "by_date" "${files1[@]}"
