#!/bin/bash
#part a
grep . quotes.txt

echo 
echo
echo 
echo 
#part b
sed "" '/^[[:space:]]*$/d' quotes.txt
cat quotes.txt
