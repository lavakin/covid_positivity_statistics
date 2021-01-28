age_groups=(10 20 30 40 50 60 70 80 90 100)
mkdir -p joined
for i in "${age_groups[@]}"
do
    echo "date  positive negative" > "joined/"$i"_joined.txt"
    join -e"0" -o "0 1.1 2.1" -a1 -a2 -1 3 -2 3 -t $'\t' "POZ/$i.txt" "NEG/$i.txt"  >> "joined/"$i"_joined.txt"
done
