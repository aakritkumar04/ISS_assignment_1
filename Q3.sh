read file

#part A
filesize=`wc -c $file`
size="$(wc -c < "$file")"
echo 'size >' $size 
echo 
#part B
line="$(wc -l < "$file")"
echo 'line-count >' $line 
echo
#part C
word="$(wc -w < "$file")"
echo 'word-count >' $word 
echo
#part D
i=1
while IFS= read -r line; do
    word=`echo "$line" | wc -w`
    printf 'Line No:%d-Count of words:%d\n' "$i" "$word"
    ((i=i+1))
done < $file
echo 
#part E
inp="$file"
grep -E -o '\w++' "$inp" | sort >"temp.txt"
uniq -c "temp.txt" > "$inp"
while read -r line;
do
string=($line)
if (($((${string[0]}-1))==0))
then
continue
else
echo "Word : ${string[1]} - Count of Repetitions:$((${string[0]}-1))"
fi
done < "$inp"
rm "temp.txt"