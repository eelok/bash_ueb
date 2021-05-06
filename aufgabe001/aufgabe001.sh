#!/bin/bash
# if [ "$1" -a "$2" -a "$3" == "--append" ]; then
#     `cat "$1" >> "$2"`
# elif [ "$1" -a "$2" ]; then
#     `cat "$1" > "$2"`
# fi
if [ "$1" -a "$2" -a ! "$3" ]; then
    `cat "$1" > "$2"`
    echo "first condition"
elif [ "$1" -a "$2" -a "$3" == "--append" ]; then
    `cat "$1" >> "$2"`
    echo In file b.txt after append: `cat b.txt`
else 
    echo "input first file: "
    read firstF
    echo "input second file: "
    read secodF
    echo "append: yes/no"
    read append
    if [ "$append" == "yes" ]; then
        `cat "$firstF" >> "$secodF"`
        echo In file b.txt after append: `cat b.txt`
    else 
        `cat "$firstF" > "$secodF"`
        echo In file b.txt: `cat b.txt`
    fi
fi    