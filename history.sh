sudo pacman -Sy
sudo pacman -S mesa sof-firmware zsh curl linux-firmware-marvell gcc man-db lib32-mesa openssh lib32-vulkan-intel vulkan-intel reflector power-profiles-daemon cpupower lib32-pipewire pipewire-audio pipewire-pulse pavucontrol git base-devel xdg-user-dirs --needed --noconfirm
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

git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
sudo cp $HOME/neovim_conf/init.lua $HOME/.config/nvim

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl -sS https://webi.sh/golang | sh; source ~/.config/envman/PATH.env
go install github.com/bootdotdev/bootdev@latest
curl -sS https://webi.sh/gh | sh; source ~/.config/envman/PATH.env

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo cp $HOME/neovim_conf/.zshcr $HOME/
chsh -s $(which zsh)
