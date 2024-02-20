curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
sudo apt-get install -y fzf
echo "PATH=/home/$USER/.local/bin:$PATH" >> .bashrc
exec bash
echo "eval "$(zoxide init --cmd cd bash)""
exec bash
