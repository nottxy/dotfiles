# As root user

# Enable wheel group with visudo
# This is done by uncommenting the line with `%wheel ALL=(ALL) ALL`
# and uncommenting the line with `%wheel ALL=(ALL) NOPASSWORD: ALL`

# Locale settings, uncomment the line in `/etc/locale.gen`
# `en_US.UTF-8 UTF-8`
# `zh_CN.UTF-8 UTF-8`

# Add user to wheel group, to grant sudo privileges
sudo gpasswd -a bob wheel

# Generate the locale.
sudo locale-gen
sudo localectl set-locale LANG=en_US.UTF-8

# Update system
sudo pacman-mirrors -c China
sudo pacman -Syyu

# Install critical packages.
sudo pacman -Sq --noconfirm base base-devel

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.cargo/env
rustup component add rls rust-analysis rust-src rustfmt clippy

# Install tools
sudo pacman -Sq --noconfirm ibus-rime git calibre tmux xclip code nodejs npm yarn postgresql yay
sudo pacman -S virtualbox virtualbox-guest-iso

# Install more
yay -Sq --noconfirm google-chrome freeplane typora netease-cloud-music
yay -S vitrualbox-ext-oracle

