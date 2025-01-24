set -e

sudo apt update
sudo apt upgrade
sudo apt install ripgrep npm cmake pip python3-venv tmux fd-find xclip git zsh zplug fonts-powerline unzip
chsh -s /bin/zsh

wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
sudo mkdir -p /usr/local/bin
chmod a+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/fdellwing/zsh-bat.git $ZSH_CUSTOM/plugins/zsh-bat

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

yes | cp -rf .zshrc ~/.zshrc
yes | cp -rf .tmux.conf ~/.tmux.conf
mkdir -p ~/.config/nvim
yes | cp -rf init.lua ~/.config/nvim/init.lua
yes | cp -rf snippets ~/.config/nvim/

# GNOME SETTINGS
# sudo apt install yaru-theme-icon yaru-theme-gnome-shell yaru-theme-gtk yaru-theme-unity
# get color schema VS CODE Dark +
bash -c "$(wget -qO- https://git.io/vQgMr)"
