# OS-setup


# NVIM
# Prerequisites: 
```
curl
git
nvim
nodejs
npm
```
Fedora: `dnf install curl git nvim nodejs npm`

# Setup: 
```
cd ~
mkdir -p .config/nvim
touch .config/nvim/init.vim
cd .config/nvim
```
Copy init.vim

Warning: external script, see https://github.com/junegunn/vim-plug

Install script: `sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`
Open init.vim with `nvim ~/.config/nvim/init.vim`
Type `:PlugInstall`

## COC:
Fedora (36):
```
npm install -g -y yarn
cd ~/.local/share/nvim/plugged/coc.nvim
yarn install 
yarn build
```
Language Server: `dnf install clang-tools-extra`

Open init.vim with `nvim ~/.config/nvim/init.vim`
`:CoCInstall coc-clangd`
