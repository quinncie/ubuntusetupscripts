curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
echo -e "PATH=/home/$USER/.local/bin:$PATH\neval "$(zoxide init --cmd cd bash)"" >> .bashrc
