#!/usr/bin/env sh

INSTALL_DIR=$(echo ~/Playground/scriptss)

sudo rm -r $INSTALL_DIR
mkdir -p $INSTALL_DIR
cd $INSTALL_DIR

git clone https://github.com/m301/ModularScripts.git .

chmod +x "$INSTALL_DIR/*.sh" "$INSTALL_DIR/*.bash"

sed -i.bak '/^export MS_PLAYGROUND_ROOT/ d' ~/.bashrc
echo "export MS_PLAYGROUND_ROOT=\"$INSTALL_DIR\" && . \"$INSTALL_DIR/bash_aliases.sh" >> ~/.bashrc

source ~/.bashrc