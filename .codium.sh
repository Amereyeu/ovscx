#!/bin/sh

# colors
switch="\033["
normal="${switch}0m"
color="${switch}1;36m"

set -e

## Prepare
echo
echo "${color}Preparing codium snap for modification...${normal} "
echo 


# Get Revision Of Codium Snap
REV="$(snap list | grep codium | awk '{print $3}')"


# Get Snap File
FILE="/var/lib/snapd/snaps/codium_${REV}.snap"


# Unmount Snap
sudo systemctl stop "snap-codium-${REV}.mount"
sudo /usr/lib/snapd/snap-discard-ns codium


# Create Temp Folder
rm -rf /home/owner/Dokumenty/vsc
mkdir /home/owner/Dokumenty/vsc
cd /home/owner/Dokumenty/vsc


## Modify
echo
echo "${color}Copying and modifying snap in temp folder...${normal} "
echo 


# Extract Snap
sudo chmod o+r "${FILE}"
unsquashfs -d snap "${FILE}"


# Copy New Files
cp /home/owner/Dokumenty/codium-update-files/codium.png /home/owner/Dokumenty/vsc/snap/meta/gui
cp /home/owner/Dokumenty/codium-update-files/vscodium.png /home/owner/Dokumenty/vsc/snap/usr/share/pixmaps
cp /home/owner/Dokumenty/codium-update-files/workbench.desktop.main.css /home/owner/Dokumenty/vsc/snap/usr/share/codium/resources/app/out/vs/workbench
cp /home/owner/Dokumenty/codium-update-files/code.png /home/owner/Dokumenty/vsc/snap/usr/share/codium/resources/app/resources/linux


# Create Snap
echo
echo "${color}Creating new codium snap...${normal} "
echo 


# Rebuild Snap
sudo rm -f "${FILE}"
sudo mksquashfs snap "${FILE}" -noappend -comp lzo -no-fragments


## Finalize
echo
echo "${color}Mounting new codium snap and removing temp folder...${normal} "
echo 


# Mount Snap
sudo systemctl start "snap-codium-${REV}.mount"


# Clean Up
rm -rf /home/owner/Dokumenty/vsc


## Done
echo
echo "${color}All done and ready to use...${normal} "
echo 





