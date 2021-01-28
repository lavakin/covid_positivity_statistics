mkdir -p test/zeny
mkdir -p test/muzi



for file in "$@"
do
	rfile=$(echo $file | cut -d'/' -f 2)
	cat $file| awk '$1 > 4 {print}' >> "test/zeny/$rfile"
	cat $file| awk '$1 < 4 {print}' >> "test/muzi/$rfile"
done
