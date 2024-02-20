 sudo apt-get update
 sudo apt-get install -y neovim
 curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 curl -fLo ~/.config/nvim/init.vim --create-dirs     https://raw.githubusercontent.com/quinncie/nvimplugpreset/main/init.vim
 curl -fsSL https://deb.nodesource.com/setup_21.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
nvim
