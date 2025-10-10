#!/bin/bash

# vim
cp ~/.vimrc ./

# nvim
cp ~/.config/nvim/init.lua ./nvim
cp ~/.config/nvim/lazy-lock.json ./nvim
cp -r ~/.config/nvim/lua ./nvim/

# neofetch
cp -r ~/.config/neofetch ./

# oh-my-zsh
cp ~/.p10k.zsh ./
cp -r ~/.oh-my-zsh ./
