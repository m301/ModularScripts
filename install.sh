#!/usr/bin/env sh

if [ $# -eq 0 ]; then
  echo "Please specify install directory."
  exit 1
fi

INSTALL_DIR=$(echo $1)

mkdir -p $INSTALL_DIR
cd $INSTALL_DIR

git clone https://github.com/m301/ModularScripts.git .

chmod +x $INSTALL_DIR/*.sh

sed -i.bak '/^export MS_PLAYGROUND_ROOT/ d' ~/.bashrc
echo "export MS_PLAYGROUND_ROOT=\"$INSTALL_DIR\" && . \"$INSTALL_DIR/bash_aliases.sh\"" >> ~/.bashrc

source ~/.bashrc