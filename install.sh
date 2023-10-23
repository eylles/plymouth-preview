#!/bin/bash

echo "[Info]: Installling plymouth-preview"
mkdir -p $HOME/.local/bin/
install plymouth-preview $HOME/.local/bin/plymouth-preview

if [[ $SHELL = *"bash" ]]; then
	RCPATH=$HOME/.bashrc
elif [[ $SHELL = *"zsh" ]]; then
	RCPATH=$HOME/.zshrc
elif [[ $SHELL = *"fish" ]]; then
	RCPATH=None
	fish -c fish_add_path $HOME/.local/bin/
else
	echo "[Warning]: Shell is not supported. Please search up a tutorial online on how to add to PATH for your specific shell.
	The installation is finished, you just have to have ~/.local/bin/ in your PATH."
	exit 1
fi
if [[ $RCPATH != "None" ]]; then
	grep -qxF 'PATH="$HOME/.local/bin:${PATH}"' $RCPATH || echo 'PATH="$HOME/.local/bin:${PATH}"' >> $RCPATH
	grep -qxF 'export PATH' $HOME/.bashrc || echo 'export PATH' >> $RCPATH
	
	echo "[Info]: Added path '~/.local/bin/' to your .bashrc"
fi

echo "[Info]: The next step might ask for your password to create a symbolic link."
sudo ln -sf $HOME/.local/bin/plymouth-preview /usr/local/bin

if [[ $SHELL = *"bash" ]]; then source ~/.bashrc
elif [[ $SHELL = *"zsh" ]]; then source ~/.zshrc
fi
echo "[Info]: Successfully installed, enjoy!"
