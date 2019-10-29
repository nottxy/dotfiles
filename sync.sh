git pull

# Others
DOTFILES_DIR=`pwd`

# tmux
rm -f ~/.tmux.conf
ln -s $DOTFILES_DIR/tmux.conf ~/.tmux.conf

# rime
rm -f ~/.config/ibus/rime/default.custom.yaml
ln -s $DOTFILES_DIR/rime.custom.yaml ~/.config/ibus/rime/default.custom.yaml

# newsboat
rm -rf ~/.newsboat/config
ln -s $DOTFILES_DIR/newsboat/config ~/.newsboat/config
rm -rf ~/.newsboat/urls
ln -s $DOTFILES_DIR/newsboat/urls ~/.newsboat/urls

# mcfly
MCFLY=$DOTFILES_DIR/mcfly.bash
if ! grep -q "$MCFLY" ~/.bashrc; then
	echo "source $MCFLY" >> ~/.bashrc
fi

# sudo
sudo rm -f /etc/sudoers.d/90-local
sudo cp $DOTFILES_DIR/sudo.me.txt /etc/sudoers.d/90-local