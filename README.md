# F6KGL OS

Yet another arch linux distro for ham radio purposes... But for **x86_64** archs.

This distro includes the main tools for *digital modes, SDR, hamnet and more!*

<img width="40%" src="https://cdn.discordapp.com/attachments/719267891694010389/931566645208571904/unknown.png" />

It features the basics amateur radio preconfigured software packages:

* **hamlib**: Basic CLI tools to control your rig
* **direwolf**: For all APRS stuff (client not included, recommend installing `xastir`)
* **qsstv**: A simple SSTV/DRM image encoder/decoder
* **wsjtx**: Weak signals HF digital modes
* **js8call**: Weak Signals chat
* **klog**: QSO logger
* **flrig**: User friendy GUI to control hamlib compatible rigs
* **SDR++**: RX ready Plug'n'Play configuration for every SDR dongle (HackRF, RTL, FunCube, limeSDR...)
* And [many more!](https://gitlab.com/f4iey/f6kgl-repo)

You can either [download the ISO](https://perso.esiee.fr/~benkemoj/downloads/) or *build it yourself* with the steps below.
## Prerequisites

To compile the ISO, make sure `archiso` is already installed on your machine:
```sh
pacman -Sy archiso
git clone https://gitlab.com/F4IEY/f6kgl-os.git
```

## Building the iso

Once the repo is cloned and AUR packages are imported, use the following commands and make sure to have the right permissions:

```sh
cd f6kgl-os/archlive
mkarchiso -v -w /path/to/your/working/folder -o /path/to/iso/destination ./
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

For *UEFI*, make sure *secure boot* is disabled.

### Virtual Machine

For testing in a virtual machine (VMWare/Virtualbox), create a new VM with at least generic `Linux 5.10` on it and select the ISO as external boot drive.

# Installing

Now that the installing feature works, you can either open the `Install System` in the launcher or simply type `calamares` in a terminal. You'll maybe need to enter the session password, *which is the same as the default username.* 

# Other screenshots

![f6kgl-mate](https://cdn.discordapp.com/attachments/689008172442058759/933404557252390932/unknown.png)

![f6kgl-bspwm](https://media.discordapp.net/attachments/685121553729323031/928383101724397568/unknown.png?width=1635&height=917)

# FAQ

## Will it run on my low-spec machine / raspberry devices?
Again, This Linux distro is meant to run on **64bits** (x86_64) machines **NOT** built for ARM-based machines nor 32bits architectures.

*Similar amateur radio distro projects are working on raspberry devices, such as [hamPi](https://github.com/dslotter/HamPi)*

## How old my machine can be to run this properly?
This OS is permanently tested and daily driven on a Thinkpad x220, which is a **10 year-old** laptop.

Here are some well-running configuration examples, storage info does not apply in *live mode*:
|Configuration|Storage (GB)|Memory (GB)|Reference processor|
|:-----------:|-----------:|----------:|------------------:|
|Minimal      |           8|          8|   2.4GHz dual core|
|Recommended  |         256|         16|   3.2GHz dual core|
|Optimal      |         512|         32|   4.2GHz hex  core|

## Is there an AUR helper built-in?
Yes. `yay` is usable out of the box.

## Is there \<insert ham radio program name> built in?
If this particular piece of software is not built, you may check the f6kgl-repo. In case it is not present, first have a look into the AUR. If you still cannot find it, please ask or push it to the AUR.

## Oh no! My machine is taking too long to install and the lockscreen popped-up! What's the live user password?
Again, the password is `liveuser`.

## Which distro F6KGL OS is based on?
It is based on *Arch Linux*, the most popular rolling release distro.
