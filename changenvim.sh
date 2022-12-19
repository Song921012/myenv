usingastronvim(){
if [ ! -d "$HOME/.config/nvim.spacevim" ]; then
mv ~/.config/nvim ~/.config/nvim.spacevim;
#mv ~/.local/share/nvim ~/.local/share/nvim.spacevim;
mv ~/.config/nvim.astronvim ~/.config/nvim;
#mv ~/.local/share/nvim.astronvim ~/.local/share/nvim;
else
echo "you are already using astronvim"
fi
}

usingspacevim(){
if [ ! -d "$HOME/.config/nvim.astronvim" ]; then
mv ~/.config/nvim ~/.config/nvim.astronvim;
#mv ~/.local/share/nvim ~/.local/share/nvim.astronvim;
mv ~/.config/nvim.spacevim ~/.config/nvim;
#mv ~/.local/share/nvim.spacenvim ~/.local/share/nvim;
else
echo "you are already using spacevim"
fi
}

