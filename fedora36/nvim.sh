#!/bin/bash
set -e
cd ~
mkdir -p .config/nvim
touch .config/nvim/init.vim
cd .config/nvim

#Plugins
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

dnf install -y nodejs npm 
:PlugInstall
#COC
npm install -g -y yarn

cd ~/.local/share/nvim/plugged/coc.nvim

yarn install 
yarn build

dnf install clang-tools-extra

:CocInstall coc-clangd
