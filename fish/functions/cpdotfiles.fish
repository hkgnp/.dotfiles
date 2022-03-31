function cpdotfiles
    rsync -av ~/.config/nvim ~/Code\ Projects/dotfiles/
    rsync -av ~/.config/yabai ~/Code\ Projects/dotfiles/
    rsync -av ~/.config/skhd ~/Code\ Projects/dotfiles/
    rsync -av --exclude "node_modules" ~/.config/coc ~/Code\ Projects/dotfiles/
    rsync -av ~/.config/iterm2 ~/Code\ Projects/dotfiles/
    rsync -av --exclude 'z.fish' --exclude '__z*.*' ~/.config/fish ~/Code\ Projects/dotfiles
    cd ~/Code\ Projects/.dotfiles
    git add .
    git commit -m "Updated dotfiles"
    git push
end
