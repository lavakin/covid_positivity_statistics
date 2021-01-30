
mkdir -p by_gender/zeny
mkdir -p by_gender/muzi
rm -r by_gender/muzi/* by_gender/zeny/* 

for file in "$@"
do
	rfile=$(echo $file | cut -d'/' -f 2)
	cat $file| awk '$1 > 4 {print}' >> "by_gender/zeny/$rfile"
	cat $file| awk '$1 < 4 {print}' >> "by_gender/muzi/$rfile"
done
