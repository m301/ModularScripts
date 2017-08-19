#!/usr/bin/env sh

if [ $# -eq 0 ]; then
  echo "Please specify install directory."
  exit 1
fi

INSTALL_DIR=$(echo $1)

echo "Creating $INSTALL_DIR ..."
mkdir -p $INSTALL_DIR
cd $INSTALL_DIR

echo "Pulling latest code to $INSTALL_DIR ..."
git clone https://github.com/m301/ModularScripts.git .

echo "Making all .sh executable in $INSTALL_DIR ..."
chmod +x $INSTALL_DIR/*.sh

echo "Removing previous references of installation if exist..."
sed -i.bak '/^export MS_PLAYGROUND_ROOT/ d' ~/.bashrc

echo "Adding variables and aliases path in .bashrc..."
echo "export MS_PLAYGROUND_ROOT=\"$INSTALL_DIR\" && . \"$INSTALL_DIR/bash_aliases.sh\"" >> ~/.bashrc

echo "Sourcing new bashrc"
source ~/.bashrc

echo "Installed. Verify by executing ms"