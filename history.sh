sudo pacman -Sy
sudo pacman -S mesa sof-firmware linux-firmware-marvell gcc man-db lib32-mesa openssh lib32-vulkan-intel vulkan-intel reflector power-profiles-daemon cpupower lib32-pipewire pipewire-audio pipewire-pulse pavucontrol git base-devel xdg-user-dirs --needed --noconfirm
sudo systemctl enable reflector

git clone https://aur.archlinux.org/yay-bin.git $HOME/yay
sleep 2

cd $HOME/yay/
makepkg -si
cd
sleep 2

yay -Sy
sudo nano /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
   
sudo pacman -S hyprland ghostty swaync xdg-desktop-portal-hyprland hyprpolkitagent qt5-wayland qt6-wayland hyprpaper xclip sddm rofi-wayland unzip make ripgrep fd neovim --needed --noconfirm
yay -S xwaylandvideobridge --needed --noconfirm
sudo systemctl enable sddm
