#!/usr/bin/env sh

INDEX="$2"
_EXEC_PATH="$MS_PLAYGROUND_ROOT/custom/"
if [ "$INDEX" = "1" ]; then
 ls "$_EXEC_PATH" -1 -p | sed -e 's/\..*$//';
elif [ "$INDEX" = "2" ]; then
  path=$_EXEC_PATH/$1
  if [ -e "$path.sh" ]; then
    bash $path.sh shortlist;
  elif [ -e "$path.bash" ]; then
    sh $path.bash shortlist;
  fi;
fi


