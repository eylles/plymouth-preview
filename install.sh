#!/bin/bash
echo "info: Installling plymouth-preview"
install plymouth-preview $HOME/.local/bin/plymouth-preview
grep -qxF 'PATH="$HOME/.local/bin:${PATH}"' $HOME/.bashrc || echo 'PATH="$HOME/.local/bin:${PATH}"' >> $HOME/.bashrc
grep -qxF 'export PATH' $HOME/.bashrc || echo 'export PATH' >> $HOME/.bashrc
echo "info: The next step might ask you to introduce your password to create symbolic link"
sudo ln -sf $HOME/.local/bin/plymouth-preview /usr/local/bin
source ~/.bashrc
echo "info: Success. Sourced '~/.bashrc'"
