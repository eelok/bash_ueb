#!/bin/bash
start=$1
end=$2
if [ "$start" -ge "$end" ]; then
    echo "the first parameter has to be smaller then the second parameter"
    exit 0
else
    while [ "$start" -le "$end" ];
    do
        res=$(($res + $start))
        ((++start))
    done
    echo $res
fi    
exit 0
