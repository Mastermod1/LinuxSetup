set -e

echo "Update packages and install {ripgrep npm cmake pip python3-venv tmux fd-find xclip git zsh zplug fonts-powerline unzip libfuse-dev}"
sudo apt update
sudo apt upgrade
sudo apt install ripgrep npm cmake pip python3-venv tmux fd-find xclip git zsh zplug fonts-powerline unzip libfuse-dev
chsh -s /bin/zsh

LATEST_VERSION=$(curl -s https://api.github.com/repos/neovim/neovim/releases/latest | grep -oP '"tag_name": "\K(.*?)(?=")')
NVIM_URL="https://github.com/neovim/neovim/releases/download/$LATEST_VERSION/nvim-linux-x86_64.appimage"
echo "Downloading and installing Neovim $LATEST_VERSION"
wget "$NVIM_URL" -O nvim.appimage
sudo mkdir -p /usr/local/bin
chmod a+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

echo "Downloading and installing OhMyZsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Downloading and installing ZSH plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/fdellwing/zsh-bat.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-bat

echo "Downloading and installing TMUX plugin manager"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Copying dot files"
yes | cp -rf .zshrc ~/.zshrc
yes | cp -rf .tmux.conf ~/.tmux.conf
mkdir -p ~/.config/nvim
yes | cp -rf init.lua ~/.config/nvim/init.lua
yes | cp -rf snippets ~/.config/nvim/

git config --global core.editor "nvim"
git config --global user.name "Daniel Kalmucki"
git config --global user.email ""

# GNOME SETTINGS
# sudo apt install yaru-theme-icon yaru-theme-gnome-shell yaru-theme-gtk yaru-theme-unity
# get color schema VS CODE Dark +
# bash -c "$(wget -qO- https://git.io/vQgMr)"
