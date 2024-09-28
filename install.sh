sudo apt install ripgrep npm cmake pip python3-venv tmux fd-find xclip git zsh zplug
chsh -s /bin/zsh

wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
sudo mkdir /usr/local/bin
chmod a+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim
rm nvim.appimage

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

yes | cp -rf .zshrc ~/.zshrc
yes | cp -rf .tmux.conf ~/.tmux.conf
yes | cp -rf init.lua ~/.config/nvim/init.lua
yes | cp -rf snippets ~/.config/nvim/

# GNOME SETTINGS
# sudo apt install yaru-theme-icon yaru-theme-gnome-shell yaru-theme-gtk yaru-theme-unity
# get color schema VS CODE Dark +
# bash -c "$(wget -qO- https://git.io/vQgMr)"
