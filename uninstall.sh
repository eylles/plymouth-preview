echo "Uninstalling plymouth-preview..."
rm $HOME/.local/bin/plymouth-preview
echo "Uninstalling the next step might require your password to remove the symlink in '/usr/local/bin/'"
sudo rm /usr/local/bin/plymouth-preview
echo "Plymouth-preview uninstalled successfully!"
