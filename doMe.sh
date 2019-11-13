#!/bin/bash


if [[ ! -d doMe_uncompleted ]]; then
mkdir doMe_uncompleted
chmod 700 doMe_uncompleted
fi

if [[ ! -d doMe_completed ]]; then
mkdir doMe_completed 
chmod 700 doMe_completed 
fi



help() {
echo "helping is good"
}

list() {
last=0
for file in $(ls doMe_uncompleted); do
echo "$file)" $(head -n 1 doMe_uncompleted/"$file")
last="$file"
done

echo -e "\n1-$last) See more information on this item"
read itemNum
if [[ ! -e doMe_uncompleted/"$itemNum" ]]; then
echo "That item number doesn't exist"
else
cat doMe_uncompleted/"$itemNum"
fi
}

complete() {
echo "helping is good"
}

add() {
num=0
for file in $(ls doMe_uncompleted); do
num=file
done

num=$((num + 1))
additionalText=$(</dev/stdin)
echo -e "$1\n-------\n$additionalText" > doMe_uncompleted/"$num"
chmod 600 doMe_uncompleted/"$num"
}
if [[ $1 == "help" ]]; then
help
fi

if [[ $1 == "add" ]]; then
add "$2"
fi

if [[ $1 == "list" ]]; then
list
fi

