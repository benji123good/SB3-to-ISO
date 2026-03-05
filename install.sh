echo Hello Please Make your Way Over To https://studio.penguinmod.com/PenguinMod-Packager/ to pakage your project
echo make sure to pakage it as a Electron Linux application 64 bit ONLY
echo and make sure to select start at full screen
echo now download it and save it where ever you would like make sure to rember the file path
echo would you like to download linuxmint from https://pub.linuxmint.io/stable/22.3/linuxmint-22.3-xfce-64bit.iso? if so please click enter.
echo if not to ctr + C
read -p Install Linux Mint? To Cancel Type ctr c
echo i will now install the needed ISO
wget https://pub.linuxmint.io/stable/22.3/linuxmint-22.3-xfce-64bit.iso
echo DONE!
echo please enter where you saved the sb3. make sure its unzipped it should look like this Rootdir->Project name-> projectname type the one to this folder
read sb3
echo One Moment....
cd ${sb3}/resources/app
echo now please enter your username.
read tap1

