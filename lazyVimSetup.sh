sudo apt-get
sudo apt-get install ninja-build gettext cmake g++ unzip curl git-all libstdc++6
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo 
sudo make install 
cd ~
rm -rf neovim
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
cd ~
sudo rm -r nerd-fonts
git clone https://github.com/LazyVim/starter ~/.config/nvim
curl -fLo ~/.config/nvim/lua/plugins/colorscheme.lua --create-dirs https://raw.githubusercontent.com/quinncie/ubuntusetupscripts/main/assets/colorscheme.lua
nvim
