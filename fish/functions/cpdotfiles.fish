function cpdotfiles
    find ~/.config/ -name '.DS_Store' -type f -delete -print
    rsync -av --exclude ".DS_Store" ~/.config/nvim ~/Code_Projects/dotfiles/
    rsync -av --exclude ".pyc" ~/.config/yabai ~/Code_Projects/dotfiles/
    rsync -av --exclude ".DS_Store" ~/.config/skhd ~/Code_Projects/dotfiles/
    rsync -vz ~/.config/coc/extensions/package.json ~/Code_Projects/dotfiles/coc/extensions/
    rsync -av --exclude ".DS_Store" ~/.config/iterm2 ~/Code_Projects/dotfiles/
    rsync -av --exclude ".DS_Store" ~/.config/vsnip ~/Code_Projects/dotfiles/
    rsync -av --exclude ".DS_Store" --exclude 'z.fish' --exclude '__z*.*' ~/.config/fish ~/Code_Projects/dotfiles
    cd ~/Code_Projects/dotfiles
    git add .
    git commit -m "Updated dotfiles"
    git push
end
