List of dotfiles for MacOS Monterey. Dotfiles for:

- nvim
- coc
- fish
- iterm2
- skhd
- yabai

# Special Notes

### nvim

Following are needed for nvim to work happily:

```bash
brew install ripgrep fd-find

# or

sudo dnf install ripgrep fd-find

# then

sudo npm install -g neovim tree-sitter

python3 -m pip install neovim
```

### fish

`https://github.com/jethrokuan/z` needs to be installed with `jorgebucaran/fisher`.

```bash
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# then

fisher install jethrokuan/z
```
