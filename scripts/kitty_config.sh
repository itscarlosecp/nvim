sudo update-alternatives --config x-terminal-emulator

THEME=https://raw.githubusercontent.com/dexpota/kitty-themes/master/themes/gruvbox_dark.conf

wget "$THEME" -P ~/.config/kitty/themes

mv ./kitty/kitty.conf ~/.config/kitty
