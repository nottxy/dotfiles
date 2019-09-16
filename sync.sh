git pull

# Others
DOTFILES_DIR=`pwd`

rm -f ~/.tmux.conf
ln -s $DOTFILES_DIR/tmux.conf ~/.tmux.conf

rm -f ~/.Xmodmap
ln -s $DOTFILES_DIR/Xmodmap ~/.Xmodmap

BASHRC=$DOTFILES_DIR/bashrc
if ! grep -q "$BASHRC" ~/.bashrc; then
	echo ". $BASHRC" >> ~/.bashrc
fi
