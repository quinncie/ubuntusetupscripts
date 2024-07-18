sudo apt-get install ninja-build gettext cmake g++ unzip curl git-all
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo 
sudo make install 
