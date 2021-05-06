#!/bin/bash
var=$1
case "$var" in
    H*)
        echo "beginnt with H";;
    ???)
        echo "three words";;
    [Mm]??[Yy])
        echo "variant 3";;
    *by)
        echo "variant 4";;
    *)
        echo "some other letters";;
esac