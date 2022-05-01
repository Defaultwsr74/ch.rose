systemctl enable NetworkManager
systemctl enable avahi-daemon

su chrose -c "sh /home/2-build-and-install-yay.sh" && rm -rf /home/2-build-and-install-yay.sh

pacman-key --init && pacman-key --populate && su chrose -c "yay -S downgrade --noconfirm" && downgrade 'kpmcore=21.12.1' --ala-only --noconfirm && pacman -Sy && pacman -S kpmcore --noconfirm
su chrose -c "yay -S freetype2-cleartype --noconfirm"
su chrose -c "yay -S p7zip-gui --noconfirm"

rm -rf /usr/share/wallpapers/Next/contents/images/*
mv ../usr/share/wallpapers/Next/contents/wall.jpg ../usr/share/wallpapers/Next/contents/images/1440x900.jpg

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





