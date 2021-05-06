#!/bin/bash
if [ "$1" -a "$2" -a "$3" == "--append" ]; then
    `cat "$1" >> "$2"`
elif [ "$1" -a "$2" ]; then
    `cat "$1" > "$2"`
fi