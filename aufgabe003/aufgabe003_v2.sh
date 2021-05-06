#!/bin/bash
start=$1
end=$2
if [ "$start" -ge "$end" ]; then
  echo "Error:"
  echo "First parameter should be smaller than second parameter."
else
  res=0
  for (( i="$start"; i<="$end"; i++ )); do
    res=`expr "$res" + "$i"`
  done
    echo "result:" "$res"
fi