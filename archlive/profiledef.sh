#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="f6kgl"
iso_label="f6kgl-v5.1"
iso_publisher="F6KGL OS <https://f6kgl-f5kff.fr>"
iso_application="F6KGL OS Live/Rescue CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/etc/skel/Desktop/sdrpp.desktop"]="0:0:755"
  ["/etc/skel/Desktop/klog.desktop"]="0:0:755"
  ["/etc/skel/Desktop/qsstv.desktop"]="0:0:755"
  ["/etc/skel/Desktop/wsjtx.desktop"]="0:0:755"

)
