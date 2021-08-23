#preparing pacman for the future system by selecting only one main mirror
sed -i 's/./#&/' /etc/pacman.d/mirrorlist
sed -i -E '/(https:\/\/mirrors.kernel.org.+)/s/^#//' /etc/pacman.d/mirrorlist
echo "PRETTY_NAME=\"F6KGL OS\"" >> /etc/os-release