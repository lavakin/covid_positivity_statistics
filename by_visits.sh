mkdir -p by_visits
> by_visits/merged.txt
bash by_visits_scripts/get_dates1.sh text_files/*
bash by_visits_scripts/get_dates2.sh text_files2/*
bash by_visits_scripts/uniq.sh by_visits/merged.txt
