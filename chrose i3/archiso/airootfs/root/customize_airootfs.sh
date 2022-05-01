systemctl enable NetworkManager
systemctl enable avahi-daemon

su chrose -c "sh /home/2-build-and-install-yay.sh" && rm -rf /home/2-build-and-install-yay.sh

pacman-key --init && pacman-key --populate && su chrose -c "yay -S downgrade --noconfirm" && downgrade 'kpmcore=21.12.1' --ala-only --noconfirm && pacman -Sy && pacman -S kpmcore --noconfirm

su chrose -c "yay -S freetype2-cleartype --noconfirm"
su chrose -c "yay -S p7zip-gui --noconfirm"
su chrose -c "yay -S polybar --noconfirm"

cp /etc/polybar/config-cp.ini /etc/polybar/config.ini
rm -rf /usr/share/wallpapers/Next/contents/images/*

cp ../calam/* /etc/calamares/branding/default/ -R
cp ../calam1/* /usr/share/calamares/branding/default -R

cp /home/removeuser.conf /etc/calamares/modules/
cp /home/removeuser.conf /usr/lib/calamares/modules/


sleep 5

rm -rf ../calam
rm -rf ../calam1
rm -rf /home/removeuser.conf

pacman-key --init
pacman-key --populate







