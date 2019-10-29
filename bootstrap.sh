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

# Install tools
sudo pacman -Sq --noconfirm ibus-rime git tmux xclip code nodejs npm yarn yay aria2
sudo pacman -Sq --noconfirm calibre postgresql racket
sudo pacman -S virtualbox virtualbox-guest-iso

# Enable AUR support

# Install more
yay -Sq --noconfirm google-chrome freeplane typora virtualbox-ext-oracle netease-cloud-music qq-linux


# Add chinese language
# copy .ssh
# copy shadowsocks_config.json

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.cargo/env
rustup component add rls rust-analysis rust-src rustfmt clippy

# Other
cargo install shadowsocks-rust
cargo install mcfly
cargo install newsboat
cargo install bb
cargo install fd

# IntelliJ IDEA & Rust and Database Navigator plugins

# Caps Lock -> Ctrl at Tweaks

# sparse file not allowed error:
# edit /etc/default/grub
# comment GRUB_DEFAULT=saved
# comment GRUB_SAVEDEFAULT=true
# sudo update-grub

# unknown device type nvme0n1
# sudo rm /etc/grub.d/60_memtest86+
# sudo update-grub
