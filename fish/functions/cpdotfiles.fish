function cpdotfiles
    find ~/.config/ -name '.DS_Store' -type f -delete -print
    rsync -av --exclude ".DS_Store" ~/.config/nvim ~/Code\ Projects/dotfiles/
    rsync -av --exclude ".pyc" ~/.config/yabai ~/Code\ Projects/dotfiles/
    rsync -av --exclude ".DS_Store" ~/.config/skhd ~/Code\ Projects/dotfiles/
    rsync -vz ~/.config/coc/extensions/package.json ~/Code\ Projects/dotfiles/coc/extensions/
    rsync -av --exclude ".DS_Store" ~/.config/iterm2 ~/Code\ Projects/dotfiles/
    rsync -av --exclude ".DS_Store" --exclude 'z.fish' --exclude '__z*.*' ~/.config/fish ~/Code\ Projects/dotfiles
    cd ~/Code\ Projects/dotfiles
    git add .
    git commit -m "Updated dotfiles"
    git push
end
