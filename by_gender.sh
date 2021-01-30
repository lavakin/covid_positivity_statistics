bash gender_scripts/get_columns1.sh text_files/*
bash gender_scripts/get_columns2.sh text_files2/*
bash gender_scripts/split_gender.sh by_gender/*.*
bash gender_scripts/merge.sh by_gender/zeny/*
bash gender_scripts/merge.sh by_gender/muzi/*
bash gender_scripts/split.sh by_gender/zeny/merged2.txt
bash gender_scripts/split.sh by_gender/muzi/merged2.txt
bash gender_scripts/join.sh by_gender/zeny/poz.txt by_gender/zeny/neg.txt by_gender/zeny/joined.txt
bash gender_scripts/join.sh by_gender/muzi/poz.txt by_gender/muzi/neg.txt by_gender/muzi/joined.txt
bash scripts/ratio.sh by_gender/muzi/joined.txt by_gender/zeny/joined.txt 
bash gender_scripts/join2.sh by_gender/muzi/ratio.txt by_gender/zeny/ratio.txt results/by_gender.txt
