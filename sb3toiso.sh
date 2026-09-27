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
echo "if you dont have 7zip press ctr+C and then" 

echo "Archbased: sudo pacman -S 7zip"
echo "Debian Based, ubuntu based: sudo apt install 7zip"

echo "now drag your file here"
read sb3

echo ok "begining"

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

mkdir -p /mnt/myimage

mount -o loop,rw ${imgpath} /mnt/myimage

mv ${project}resources /mnt/myimage/root/Downloads/project/resources

mv ${imgpath} sb3bootdrive.img

echo "DONE! acess your file is in your downloads sb3toiso project and then a file called sb3bootdrive.img is what you can flash"
echo "if the file is not there please paste everything in this terminal and report an issue on github"

echo "have a good day :D"
