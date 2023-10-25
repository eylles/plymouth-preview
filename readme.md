# plymouth-preview

This script was originally found on [khAttAm's site](https://khattam.info/plymouth-preview-a-tool-to-preview-your-plymouth-theme-2010-11-19.html) but it wasn't up at the time i decided to upload it here, also made a small modification as khAttAm's original script provides a 5s preview of the plymouth theme by default, i personally find 10s to be a more useful time frame. The plymouth-preview script must be run as root, if you don't run it like so the script will return an error message reminding you to do so, also you can specify the amount of time it will run by typing the time in seconds as an argument when you run it. 
For example to preview your plymouth theme for 20 seconds just run

```
sudo plymouth-preview 20
```

This script uses the plymouth-x11 package so make sure you have it installed, if you use Debian, Ubuntu or any derivate of them you can install it with this command.

```
sudo apt install plymouth-x11
```

# Install

The install script will make the ~/.local/bin/ directory if it doesn't exist already, put the plymouth-preview script there and adds it to PATH in .bashrc, just in case it ain't already added to PATH in your system. It will also add a symlink in /usr/local/bin to make the plymouth-preview script work properly when ran as root. If you have a different dedicated scripts directory already added to your PATH, just copy the plymouth-preview script there and create the necesary symlink.
```
git clone https://github.com/eylles/plymouth-preview
cd plymouth-preview
chmod +x ./install.sh
./install.sh
```

# Uninstall

The uninstall script will remove the symlinks '~/.local/bin/plymouth-preview' and '/usr/local/bin/plymouth-preview'. Everything else the install script did (like creating ~/.local/bin/ and adding it to PATH), just in case you will install other stuff in there, but you can remove those manually.

