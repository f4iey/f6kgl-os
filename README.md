# f6kgl-os

Yet another live arch linux distro for ham radio purposes... But for x86_64 archs.

This distro includes the main tools for *digital modes, SDR, hamnet and more!*

<img width="40%" src="https://media.discordapp.net/attachments/729343035032207450/876059569858707486/unknown.png" />
<img width="40%" src="https://media.discordapp.net/attachments/729343035032207450/876059162331709440/unknown.png">

It features the basics amateur radio preconfigured software packages:

* **hamlib**: Basic CLI tools to control your rig
* **direwolf**: For all APRS stuff (client not included, recommend installing `xastir`)
* **qsstv**: A simple SSTV/DRM image encoder/decoder
* **wsjtx**: Weak signals HF digital modes
* **klog**: QSO logger
* **grig**: User friendy GUI to control hamlib compatible rigs
* **gqrx**: RX ready Plug'n'Play configuration for every SDR dongle (HackRF, RTL, FunCube, limeSDR...)

You can either [download the ISO](https://perso.esiee.fr/~benkemoj/downloads/f6kgl-2021.08.13-x86_64.iso) or *build it yourself* with the steps below.
## Prerequisites

To compile the ISO, make sure `archiso` is already installed on your machine and a local repo to import AUR packages.
```sh
pacman -Sy archiso
git clone https://gitlab.com/F4IEY/f6kgl-os.git
cd f6kgl-os/archlive
```
### Import AUR packages

To import the required packages from the AUR run `./import-aur.sh`.
**Do not skip this step!** Otherwise the ISO build will fail because of missing packages.

## Compiling the iso

Once the repo is cloned and AUR packages are imported, use the following commands and make sure to have the right permissions:

```sh
cd f6kgl-os/archlive
mkarchiso -v -w /path/to/your/working/folder -o /path/to/iso/destination .
```

If something is wrong or broken (e.g you interrupted the process or packages are missing), make sure to clean your working folder before building the ISO again:
```sh
rm -rfv /path/to/your/working/folder
```

### Flashing the ISO to a USB drive

For this operation, you can use any program you want. Although, using `dd` or *Balena Etcher* are the best way to do it as they both have been tested.
You'll need at least **2GB** of storage.

## Booting up

### BIOS/UEFI

Go to your machine boot menu and select the right drive to boot with.

### Virtual Machine

For testing in a virtual machine (VMWare/Virtualbox), create a new VM with at least generic `Linux 5.10` on it and select the ISO as external boot drive.

# French keyboard layout

Pour nos amis francais, si le layout du clavier ne correspond pas taper dans le terminal:

```sh
setxkbmap fr
```
