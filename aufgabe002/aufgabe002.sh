#!/bin/bash
file=`file $1`
case "$file" in
    *pdf*)
        echo "a pdf file";;
    *Bourne-Again*)
        echo "a bash file";;
    *ASCII*)
        echo "a txt file";;
    *)
        echo "some other file";;
esac