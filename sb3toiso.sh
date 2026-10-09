echo "wheres your home folder? (if you dont know type in /home/insertusername  on insert username replace that with your actrual computer username"
read hfolde
cd ${hfolde}/Downloads
echo "Thanks for using sb3 to iso converter by Benji123good on github and benji123good11 on scratch"
echo "in order to use this project in this folder should be a file called sb3toiso.json"
echo "your gonna need it"
echo "basically go to https://packager.turbowarp.org/"
echo "and add your project however u want"
echo "and then scroll all the way down to import settings"
echo "click it and select the sb3toiso.json"
echo "and then click pakage"
echo "and once your done drag the zip file into this terminal"
echo "make sure to run this as root"
echo "make sure 7zip is installed if not this script will not work"
echo "also make sure that the sb3 is in the same folder as this script"
echo "and make sure the folder this script is in is inside your download folder"
echo "due to termnials being stupid some handle"
echo "drag and drop better then others, i can confirm konsole"
echo "works the best so maybe use that or you will have issues"
echo "if you dont have 7zip press ctr+C and then" 
echo 
echo "Archbased: sudo pacman -S 7zip"
echo "Debian Based, ubuntu based: sudo apt install 7zip"

echo "now drag your file here"
read sb3

echo "ok begining"

7z x ${sb3}

echo "in the same folder as that zip file you downloaded"
echo "their should be a folder called project"
echo "please drag it over to this terminal"
read project

cd ${project}

read -p "may we download a file needed for this to work? (16.3 gig)"

echo "downloading now"

echo "UH OH! it appears this script cannot download it due to me not being able to download cloud storage.."
echo "please go to this link and then go to the link in that file to donwload it and then drag the downloaded https://raw.githubusercontent.com/benji123good/SB3-to-ISO/refs/heads/master/Active%20link"
read imgpath
echo "file into your terminal!"
echo "File Should be downloaded"

echo "starting file transfer (this shouldnt take long_"



# -------------------THIS PART OF THE CODE IS AI GENERATED -------------
set -euo pipefail

IMG_FILE=${imgpath}
MOUNT_DIR="/mnt/arch_root"

mkdir -p "$MOUNT_DIR"

# 1. Attach image and force partition table scan (-P)
LOOP_DEV=$(sudo losetup -fP --show "$IMG_FILE")

# Auto-cleanup on script error
cleanup() {
    sudo umount -R "$MOUNT_DIR" 2>/dev/null || true
    sudo losetup -d "$LOOP_DEV" 2>/dev/null || true
}
trap cleanup ERR

# 2. Mount ext4 root partition (p2)
ROOT_PART="${LOOP_DEV}p2"
if [ ! -b "$ROOT_PART" ]; then
    # Fallback to p1 if unpartitioned or single partition
    ROOT_PART="${LOOP_DEV}p1"
fi
sudo mount -o rw "$ROOT_PART" "$MOUNT_DIR"

# 3. Mount EFI/Boot partition (p1) if p2 exists
BOOT_PART="${LOOP_DEV}p1"
if [ -b "${LOOP_DEV}p2" ] && [ -b "$BOOT_PART" ]; then
    mkdir -p "$MOUNT_DIR/boot"
    sudo mount -o rw "$BOOT_PART" "$MOUNT_DIR/boot"
fi

echo "Successfully mounted $IMG_FILE at $MOUNT_DIR"--------

#-------------------THIS PART OF THE CODE IS NOW MADE BY HUMAN--

mv ${project}resources /mnt/arch_root/root/Downloads/project/resources

mv ${imgpath} sb3bootdrive.img

echo "DONE! acess your file is in your downloads sb3toiso project and then a file called sb3bootdrive.img is what you can flash"
echo "if the file is not there please paste everything in this terminal and report an issue on github"

echo "have a good day :D"
