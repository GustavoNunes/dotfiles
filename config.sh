# Emacs configuration
git clone https://github.com/syl20bnr/spacemacs /home/gustavo/.emacs.d
chown -R gustavo:users /home/gustavo/.emacs.d
ln -sfn $PWD/.spacemacs /home/gustavo/.spacemacs

# NixOS configuration
ln -sfn $PWD/etc/nixos /etc/nixos

# i3 configuration
ln -sfn $PWD/.config/i3/config /home/gustavo/.config/i3/config
ln -sfn $PWD/.i3status.conf /home/gustavo/.i3status.conf

# X11 configuration
ln -sfn $PWD/.Xresources /home/gustavo/.Xresources

# Misc configuration
ln -sfn $PWD/wallpaper.jpg /home/gustavo/wallpaper.jpg

# urxvt configuration
mkdir -p /home/gustavo/.urxvt/ext
ln -sfn $PWD/urxvt-clipboard /home/gustavo/.urxvt/ext/clipboard
