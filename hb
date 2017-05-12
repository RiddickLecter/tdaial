#! /usr/bin/bash 

pacman --noconfirm -Syy

# Fonts 
pacman --noconfirm -S ttf-inconsolata 

# Audio 
pacman --noconfirm -S pavucontrol pulseaudio pulseaudio-alsa

# NetworkManager 
pacman --noconfirm -S networkmanager
systemctl enable NetworkManager

# Desktop 
pacman --noconfirm -S xorg-server xorg-xinit xf86-video-intel lxqt sddm 

# Media 
pacman --noconfirm -S vlc alsa-oss alsa-lib lib32-alsa-oss 

# Browser 
pacman --noconfirm -S firefox flashplugin 

# Utils 
pacman --noconfirm -S redshift leafpad kodi qbittorrent gparted lxterminal youtube-dl screenfetch speedtest-cli cmatrix clamav 

pacman --noconfirm -Syyu 
pacman --noconfirm -Rns $(pacman -Qdtq)

echo "screenfetch" >> ~/.bashrc 
echo "Write by Rick."
