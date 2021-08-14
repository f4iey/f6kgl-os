# f6kgl-os

Yet another live arch linux distro for ham radio purposes... But for x86_64 archs.

This distro includes the main tools for *digital modes, SDR, hamnet and more!*

<img src="https://media.discordapp.net/attachments/729343035032207450/876059569858707486/unknown.png" />
<br><img src="https://media.discordapp.net/attachments/729343035032207450/876059162331709440/unknown.png">

## Prerequisites

To compile the ISO, make sure `archiso` is already installed on your machine and a local repo to import AUR packages.
```sh
pacman -Sy archiso
git clone https://gitlab.com/F4IEY/f6kgl-os.git
```

## Compiling the iso

Once the repo is cloned, use the following commands and make sure to have the right permissions:

```sh
cd f6kgl-os/archlive
mkarchiso -v -w /path/to/your/working/folder -o /path/to/iso/destination .
```

### Flashing the ISO to a USB drive

For this operation, you can use any program you want. Although, using `dd` or *Balena Etcher* are the best way to do it as they both have been tested.
You'll need at least **3GB** of storage.

## Booting up

### BIOS/UEFI

Go to your machine boot menu and select the right drive to boot with.

### Virtual Machine

For testing in a virtual machine (VMWare/Virtualbox), create a new VM with at least generic `Linux 5.10` on it and select the ISO as external boot drive.

## Getting Internet

Once booted up, you should pop in KDE graphical interface. But it turns out internet is not automatically set yet.
To do this, open KDE Konsole (or TTY2 by pressing `CTRL+ALT+F2`) and identify your interface name (for wired connection, it should look like ens00 or eth0) name with `ip a` to run:
```sh
ip link set $_YOUR_INTERFACE up
dhcpcd  $_YOUR_INTERFACE
```

# Special french users

Pour nos amis francais, si le layout du clavier ne correspond pas:

```sh
setxkbmap fr
```
