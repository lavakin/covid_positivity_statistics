for file in "$@"
do
>  "$(dirname $(realpath $file))/ratio.txt"
cat $file | awk '{if ($2+$3>20) print $1,($2/($3+$2))*1;}' | awk '{printf "%s %.3f\n",$1, $2}' >> "$(dirname $(realpath $file))/ratio.txt"
done
