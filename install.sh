#!/bin/bash
install plymouth-preview $HOME/.local/bin/plymouth-preview
grep -qxF 'PATH="$HOME/.local/bin:${PATH}"' $HOME/.bashrc || echo 'PATH="$HOME/.local/bin:${PATH}"' >> $HOME/.bashrc
grep -qxF 'export PATH' $HOME/.bashrc || echo 'export PATH' >> $HOME/.bashrc
echo Introduce your password to create symbolic link
sudo ln -sf $HOME/.local/bin/plymouth-preview /usr/local/bin
source ~/.bashrc
