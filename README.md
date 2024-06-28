# dotfiles

## Configs
```bash
git clone git@github.com:palantus/dotfiles.git ~/dotfiles
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/tmux.conf ~/.config/tmux/tmux.conf
ln -s ~/dotfiles/.bashrc ~/.bashrc
```

## Scripts
```bash
ln -s ~/dotfiles/bin/on.sh ~/.local/bin/on
```

## Dependencies

- npm
- cargo (install using rustup)
- obsidian vault (if not relevant, create ~/obsidian/Pavault)
- tmux with tpm (tpm must be installed seperately)
- neovim (installed from github guide, not apt)

## Credits

Credits for the organization and obsidian scripting goes to:
https://github.com/agalea91/dotfiles

Credits for the tmux and NeoVim configuration goes to:
https://github.com/nvim-lua/kickstart.nvim
