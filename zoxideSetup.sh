curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
echo "PATH=/home/$USER/.local/bin:$PATH" >> .bashrc
exec "$SHELL"
echo "eval "$(zoxide init --cmd cd bash)"
