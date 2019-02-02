#!/bin/bash

echo "-----------------------------------------------"
echo "    Welcome to the PSC PCSX TOOLCHAIN Setup"
echo "              Version 0.1 by mGGk"
echo "-----------------------------------------------"
echo "                    WARNING                    "
echo "This script is currently in beta and will"
echo "modify some parts of your system, I advise you"
echo "to use a VM to use this script......."
echo "I won't be responsible to any damage done to "
echo "your system => USE VM / USE SNAPSHOT !"
echo "-----------------------------------------------"
echo ""
echo "Press enter to start setup or make CTLR+C to exit"
read -n1 -s

echo ""
echo "Updating system !"
sudo apt update
sudo apt upgrade

echo "Installing requirements"
sudo apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib \
     build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
     xz-utils debianutils iputils-ping libsdl1.2-dev xterm

echo "Pulling poky"
git clone git://git.yoctoproject.org/poky
cd poky
git fetch --tags
git checkout tags/yocto-2.5.2 -b psc2.5.2.2

