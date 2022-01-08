# Initialize the keyring for first time boot
sudo pacman-key --init > /dev/null
sudo pacman-key --populate archlinux > /dev/null
# Then we wipe out the file
echo "# Custom autostart script" > $HOME/.zprofile
