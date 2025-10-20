#!/bin/bash

rm ~/.p10k.zsh
cp ./.p10k.zsh ~/.p10k.zsh

rm -rf ~/.config/nvim
cp -r ./nvim ~/.config/nvim

rm -rf ~/.config/neofetch
cp -r ./neofetch ~/.config/neofetch
