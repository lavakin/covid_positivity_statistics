echo "datum zeny muzi" > $3
join -e"0" -o "0 1.2 2.2" -a1 -a2 -1 1 -2 1 -t "$(printf '\t')" "$1" "$2" >>  "$3"
