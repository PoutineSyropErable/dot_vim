#!/usr/bin/env bash
set -euo pipefail

git submodule add "https://github.com/neoclide/coc.nvim.git" "plugged/coc.nvim"
git submodule add "https://github.com/vim-airline/vim-airline-themes.git" "plugged/vim-airline-themes"
git submodule add "https://github.com/vim-airline/vim-airline.git" "plugged/vim-airline"
git submodule add "https://github.com/preservim/nerdcommenter.git" "plugged/nerdcommenter"
git submodule add "https://github.com/junegunn/fzf.vim.git" "plugged/fzf.vim"
git submodule add "https://github.com/junegunn/fzf.git" "plugged/fzf"
git submodule add "https://github.com/catppuccin/vim" "vim"
git submodule add "https://github.com/PoutineSyropErable/dot_vim" "."
