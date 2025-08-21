#!/usr/bin/env bash
set -euo pipefail

git submodule add "https://github.com/neoclide/coc.nvim.git" "plugged/coc.nvim"  || echo cant add plugged/coc.nvim
git submodule add "https://github.com/vim-airline/vim-airline-themes.git" "plugged/vim-airline-themes"  || echo cant add plugged/vim-airline-themes
git submodule add "https://github.com/vim-airline/vim-airline.git" "plugged/vim-airline"  || echo cant add plugged/vim-airline
git submodule add "https://github.com/preservim/nerdcommenter.git" "plugged/nerdcommenter"  || echo cant add plugged/nerdcommenter
git submodule add "https://github.com/junegunn/fzf.vim.git" "plugged/fzf.vim"  || echo cant add plugged/fzf.vim
git submodule add "https://github.com/junegunn/fzf.git" "plugged/fzf"  || echo cant add plugged/fzf
git submodule add "https://github.com/AckslD/nvim-neoclip.lua.git" "plugged/nvim-neoclip.lua"  || echo cant add plugged/nvim-neoclip.lua
git submodule add "https://github.com/ryanoasis/vim-devicons.git" "plugged/vim-devicons"  || echo cant add plugged/vim-devicons
git submodule add "https://github.com/prabirshrestha/vim-lsp.git" "plugged/vim-lsp"  || echo cant add plugged/vim-lsp
git submodule add "https://github.com/prabirshrestha/asyncomplete-lsp.vim.git" "plugged/asyncomplete-lsp.vim"  || echo cant add plugged/asyncomplete-lsp.vim
git submodule add "https://github.com/prabirshrestha/vim-lsp-settings.git" "plugged/vim-lsp-settings"  || echo cant add plugged/vim-lsp-settings
git submodule add "https://github.com/prabirshrestha/asyncomplete.vim.git" "plugged/asyncomplete.vim"  || echo cant add plugged/asyncomplete.vim
git submodule add "https://github.com/tpope/vim-commentary.git" "plugged/vim-commentary"  || echo cant add plugged/vim-commentary
git submodule add "https://github.com/sheerun/vim-polyglot.git" "plugged/vim-polyglot"  || echo cant add plugged/vim-polyglot
git submodule add "https://github.com/catppuccin/vim" "vim"  || echo cant add vim
git submodule add "https://github.com/PoutineSyropErable/dot_vim" "."  || echo cant add .
