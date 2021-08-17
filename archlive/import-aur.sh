#!/bin/bash
echo configuring pacman.conf...
sed -i 's/home\/jules/~/' pacman.conf
mkdir ~/repo
cd ~/repo
echo done!
echo
echo
echo
echo importing AUR packages...
pkgname=("yay" "grig" "qsstv" "direwolf" "klog" "wsjtx" "ckbcomp" "mkinitcpio-openswap")
for t in ${pkgname[@]}; do
    git clone https://aur.archlinux.org/${pkgname[t]}.git
    cd ${pkgname[t]}
    makepkg -s
    mv ${pkgname[t]}*.zst .. && cd .. && rm -rf ${pkgname[t]}
    repo-add ham.db.tar.xz ${pkgname[t]}*.zst
done
#install calamares
wget https://raw.githubusercontent.com/arcolinuxiso/carli-pkgbuild/master/calamares/calamares-3.2.39.3-2/PKGBUILD
makepkg -s
echo if an error occured, make sure all the dependencies are installed! Then retry the script
repo-add ham.db.tar.xz calamares*.zst
echo ##########################################
echo ####        IMPORT AUR DONE           ####
echo ####                                  ####
echo ##########################################
