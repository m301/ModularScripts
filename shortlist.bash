#!/usr/bin/env bash
source env.env

INDEX="$2"

if [ "$INDEX" = "1" ]; then
 ls "$MS_DIR" -1 -p | sed -e 's/\..*$//';
elif [ "$INDEX" = "2" ]; then
 bash "$MS_DIR/$1.bash" shortlist
fi


