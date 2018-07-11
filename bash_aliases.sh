#!/usr/bin/env sh
# if ZSH is define bash
if [ -n "$ZSH_VERSION" ]; then
    # https://github.com/tmux-python/tmuxp/issues/190
    autoload bashcompinit
    bashcompinit
fi
# Load z, A good tool to navigate quickly
.  "$MS_PLAYGROUND_ROOT/z/z.sh"

#
# Modular Script method, ms as alias.
# It looks f
alias ms='mscript'
mscript(){
  spath=$MS_PLAYGROUND_ROOT/custom/$1

  if [ $# -eq 0 ]; then
    echo "You need to pass script name placed in $MS_PLAYGROUND_ROOT/custom"
  elif [ -e "$spath.sh" ]; then
   bash $spath.sh "${@:2}"
  elif [ -e "$spath.bash" ];then
   sh $spath.bash "${@:2}"
  else
   echo "$spath.{sh,bash} not found."
  fi
}

# Method passes index and previous command to ms
_autocomplete()
{
  local cur
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev=${COMP_WORDS[COMP_CWORD-1]}
  _script_commands=$(sh $MS_PLAYGROUND_ROOT/shortlist.sh ${prev} ${COMP_CWORD})

  COMPREPLY=( $(compgen -W "${_script_commands}" -- ${cur}) )
  return 0
}

complete -o nospace -F _autocomplete ms
#compdef _autocomplete ms
# Add more aliases here !
sshroot(){
 ssh root@$1
}

