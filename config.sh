# Emacs configuration
git clone https://github.com/syl20bnr/spacemacs /home/gustavo/.emacs.d
chown -R gustavo:users /home/gustavo/.emacs.d
rm /home/gustavo/.spacemacs
ln -sfn $PWD/.spacemacs.d /home/gustavo/.spacemacs.d

# NixOS configuration
ln -sfn $PWD/nixos /etc/nixos

# i3 configuration
ln -sfn $PWD/i3/config /home/gustavo/.config/i3/config
ln -sfn $PWD/i3/.i3status.conf /home/gustavo/.i3status.conf
ln -sfn $PWD/i3/wallpaper.jpg /home/gustavo/wallpaper.jpg

# X11 configuration
ln -sfn $PWD/X11/.Xresources /home/gustavo/.Xresources

# urxvt configuration
mkdir -p /home/gustavo/.urxvt/ext
ln -sfn $PWD/urxvt/urxvt-clipboard /home/gustavo/.urxvt/ext/clipboard

# zsh configuration
ln -sfn $PWD/zsh/.zshrc /home/gustavo/.zshrc
