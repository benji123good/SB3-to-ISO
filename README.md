# SB3 to ISO
Documentation and setup instructions for SB3 to ISO conversion.
Current Status:

---[{Idea}](https://scratch.mit.edu/discuss/post/5755789)---[{Plan}](/google.com)---[{**Creation**}](/google.com)---{Changes}---{Finalization}---{Complete}


**Project Once again Abandoned**

once again it is abandoned. i got into the creation of this and i am now abandoming it for now
i do not currently have the right knowledge on how to actrually crete a .iso i know how to make the program i just cant figure out that one puzel
i was originally gonnma have it based on linux mint then tiny core and then korux (as sugested by nexusSfan) and it made no sence

heres the install script that is broken that would allow you to make the iso if you wanna fix it or somth
**Start of script**

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
read username

**thats all i did**

i cant use LM since it isnt really editable and i cant figure out how to actrually do the isos.... maybe vhdx? no idea

if you use the above code please give credits :P

