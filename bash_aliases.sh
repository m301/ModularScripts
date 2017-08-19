#!/usr/bin/env sh
# Load z, A good tool to navigate quickly
.  "$MS_PLAYGROUND_ROOT/z/z.sh"

#
# Modular Script method, ms as alias.
# It looks f
alias ms='mscript'
mscript(){
  path=$MS_PLAYGROUND_ROOT/custom/$1
  if [ -e "$path.sh" ]
  then
   bash $path.bash "${@:2}"
  elif [ -e "$path.bash" ] ;then
   sh $path.sh "${@:2}"
  else
   echo "$path.{sh,bash} not found."
  fi
}

# Method passes index and previous command to ms
_autocomplete()
{
  local cur
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev=${COMP_WORDS[COMP_CWORD-1]}
  _script_commands=$( ms shortlist ${prev} ${COMP_CWORD})

  COMPREPLY=( $(compgen -W "${_script_commands}" -- ${cur}) )
  return 0
}

complete -o nospace -F _autocomplete ms


# Add more aliases here !
sshroot(){
 ssh root@$1
}

