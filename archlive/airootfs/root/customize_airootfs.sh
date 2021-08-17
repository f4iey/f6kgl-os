#preparing pacman for the future system by selecting only one main mirror
sed -i 's/./#&/' /etc/pacman.d/mirrorlist
sed -i -E '/(https:\/\/mirrors.kernel.org.+)/s/^#//' /etc/pacman.d/mirrorlist
pacman-key --init
pacman-key --populate archlinux
sed -i -E 's/(\/usr\/share\/wallpapers\/.+)/\/usr\/share\/wallpapers\/HamRadio\/f6kgl.jpg/' /home/liveuser/.config/plasma-org.kde.plasma.desktop-appletsrc
echo "PRETTY_NAME=\"F6KGL OS\"" >> /etc/os-release