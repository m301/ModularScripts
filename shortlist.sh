#!/usr/bin/env sh

INDEX="$2"

if [ "$INDEX" = "1" ]; then
 ls "$MS_PLAYGROUND_ROOT/custom" -1 -p | sed -e 's/\..*$//';
elif [ "$INDEX" = "2" ]; then
 ms "$1" shortlist
fi


